package com.estate.myEstate.repository.Specification.Filter;

import com.estate.myEstate.model.entity.BuildingEntity;
import org.springframework.data.jpa.domain.Specification;

public class HasManagerPhoneNumber {
    public static Specification<BuildingEntity> with(String managerphonenumber){
        return((root, query, criteriaBuilder) -> {
            if(managerphonenumber==null || managerphonenumber.isEmpty()) return null;
            return criteriaBuilder.like(root.get("managerphonenumber"), "%"+managerphonenumber+"%");
        });
    }
}
