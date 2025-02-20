package com.javaweb.demo.Repository.Specification.Filter;

import com.javaweb.demo.Repository.Entity.BuildingEntity;
import org.springframework.data.jpa.domain.Specification;

public class HasDirection {
    public static Specification<BuildingEntity> with(String direction) {
        return(root, query, criteriaBuilder) -> {
            if(direction==null || direction.isEmpty()) return null;
            return criteriaBuilder.like(root.get("direction"), "%"+direction+"%");
        };
    }
}
