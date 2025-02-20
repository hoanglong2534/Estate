package com.javaweb.demo.Repository.Specification.Filter;

import com.javaweb.demo.Repository.Entity.BuildingEntity;
import org.springframework.data.jpa.domain.Specification;

public class HasNumberofbasement {
    public static Specification<BuildingEntity> with(Long numberofbasement) {
        return(root, query, criteriaBuilder) ->{
            if(numberofbasement == null) return null;
            else return criteriaBuilder.equal(root.get("numberofbasement"), numberofbasement);
        };
    }
}
