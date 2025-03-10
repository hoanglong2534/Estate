package com.estate.myEstate.repository.Specification.Filter;

import com.estate.myEstate.model.entity.BuildingEntity;
import org.springframework.data.jpa.domain.Specification;

public class HasName {
    public static Specification<BuildingEntity> with(String name) {
        return(root, query, criteriaBuilder) -> {
            if(name == null || name.isEmpty()) {
                return null;
            }
            return criteriaBuilder.like(root.get("name"), "%"+name+"%");
        };
    }
}
