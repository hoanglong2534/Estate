package com.javaweb.demo.Repository.Specification.Filter;

import com.javaweb.demo.Repository.Entity.BuildingEntity;
import org.springframework.data.jpa.domain.Specification;

public class HasWard {
    public static Specification<BuildingEntity> with(String ward){
     return((root, query, criteriaBuilder) -> {
         if(ward == null || ward.trim().isEmpty()) return null;
         return criteriaBuilder.like(root.get("ward"), "%" + ward + "%");
     });
    }
}
