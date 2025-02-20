package com.javaweb.demo.Repository.Specification.Filter;

import com.javaweb.demo.Repository.Entity.BuildingEntity;
import org.springframework.data.jpa.domain.Specification;

public class HasName {
    public static Specification<BuildingEntity> with(String name) {
        System.out.println("===========================start===================");
        return(root, query, criteriaBuilder) -> {
            if(name == null || name.isEmpty()){
                System.out.println("==========nulllllllllllllllllllllllllllllllll");
                return null;
            }
            System.out.println("=======\"%\"+name+\"%\"====");
            return criteriaBuilder.like(root.get("name"), "%"+name+"%");
        };
    }
}
