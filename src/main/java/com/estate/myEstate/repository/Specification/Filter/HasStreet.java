package com.estate.myEstate.repository.Specification.Filter;


import com.estate.myEstate.model.entity.BuildingEntity;
import org.springframework.data.jpa.domain.Specification;

public class HasStreet {
    public static Specification<BuildingEntity> with(String street) {
        return((root, query, criteriaBuilder) -> {
            if(street == null || street.isEmpty()) return null;
            return criteriaBuilder.like(root.get("street"), "%" + street + "%");
        });
    }
}
