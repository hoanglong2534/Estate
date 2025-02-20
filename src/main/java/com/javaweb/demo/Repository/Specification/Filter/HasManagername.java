package com.javaweb.demo.Repository.Specification.Filter;

import com.javaweb.demo.Repository.Entity.BuildingEntity;
import org.springframework.data.jpa.domain.Specification;

public class HasManagername {
    public static Specification<BuildingEntity> with(String managername){
        return((root, query, criteriaBuilder) -> {
          if(managername==null || managername.isEmpty()) return null;
          return criteriaBuilder.like(root.get("managername"), "%"+managername+"%");
        });
    }
}
