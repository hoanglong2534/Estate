package com.javaweb.demo.Repository.Specification.Filter;

import com.javaweb.demo.Repository.Entity.BuildingEntity;
import org.springframework.data.jpa.domain.Specification;

public class HasFloorArea {
    public static Specification<BuildingEntity> with(String floorarea){
        return(root, query, criteriaBuilder) -> {
            if(floorarea == null || floorarea.isEmpty()) return null;
            return criteriaBuilder.like(root.get("floorarea"), "%"+floorarea+"%");
        };
    }

}
