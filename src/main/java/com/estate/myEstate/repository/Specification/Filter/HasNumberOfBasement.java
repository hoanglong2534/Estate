package com.estate.myEstate.repository.Specification.Filter;

import com.estate.myEstate.model.entity.BuildingEntity;
import org.springframework.data.jpa.domain.Specification;

public class HasNumberOfBasement {
    public static Specification<BuildingEntity> with(Long numberofbasement) {
        return(root, query, criteriaBuilder) ->{
            if(numberofbasement == null) return null;
            else return criteriaBuilder.equal(root.get("numberofbasement"), numberofbasement);
        };
    }
}
