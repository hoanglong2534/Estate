package com.estate.myEstate.repository.Specification.Filter;

import com.estate.myEstate.model.entity.BuildingEntity;
import org.springframework.data.jpa.domain.Specification;

public class HasManagerName {
    public static Specification<BuildingEntity> with(String managername){
        return((root, query, criteriaBuilder) -> {
            if(managername==null || managername.isEmpty()) return null;
            return criteriaBuilder.like(root.get("managername"), "%"+managername+"%");
        });
    }
}
