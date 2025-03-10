package com.estate.myEstate.repository.Specification.Filter;

import com.estate.myEstate.model.entity.BuildingEntity;
import org.springframework.data.jpa.domain.Specification;

public class HasLevel {
    public static Specification<BuildingEntity> with(Long level) {
        return((root, query, criteriaBuilder) -> {
            if(level==null) return null;
            return criteriaBuilder.equal(root.get("level"), level);
        });
    }
}
