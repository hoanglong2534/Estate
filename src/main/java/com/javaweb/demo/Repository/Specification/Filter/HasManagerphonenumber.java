package com.javaweb.demo.Repository.Specification.Filter;

import com.javaweb.demo.Repository.Entity.BuildingEntity;
import org.springframework.data.jpa.domain.Specification;

public class HasManagerphonenumber {
    public static Specification<BuildingEntity> with(String managerphonenumber){
        return((root, query, criteriaBuilder) -> {
            if(managerphonenumber==null || managerphonenumber.isEmpty()) return null;
            return criteriaBuilder.like(root.get("managerphonenumber"), "%"+managerphonenumber+"%");
        });
    }
}
