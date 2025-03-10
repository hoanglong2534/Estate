package com.estate.myEstate.repository.Specification.Filter;

import com.estate.myEstate.model.entity.BuildingEntity;
import org.springframework.data.jpa.domain.Specification;

public class HasDirection {
    public static Specification<BuildingEntity> with(String direction) {
        return(root, query, criteriaBuilder) -> {
            if(direction==null || direction.isEmpty()) return null;
            return criteriaBuilder.like(root.get("direction"), "%"+direction+"%");
        };
    }
}
