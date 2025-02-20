package com.javaweb.demo.Repository.Specification.Filter;

import com.javaweb.demo.Repository.Entity.BuildingEntity;
import org.springframework.boot.autoconfigure.info.ProjectInfoProperties;
import org.springframework.data.jpa.domain.Specification;

public class HasStreet {
    public static Specification<BuildingEntity> with(String street) {
        return((root, query, criteriaBuilder) -> {
            if(street == null || street.isEmpty()) return null;
            return criteriaBuilder.like(root.get("street"), "%" + street + "%");
        });
    }
}
