package com.javaweb.demo.Repository.Specification.Filter;

import com.javaweb.demo.Repository.Entity.BuildingEntity;
import jakarta.persistence.criteria.Join;
import org.springframework.data.jpa.domain.Specification;

import java.util.List;

public class HasBuidlingType {
    public static Specification<BuildingEntity> with(List<String> typecode) {
        return((root, query, criteriaBuilder) -> {
            if(typecode == null || typecode.isEmpty()) return null;

            //join: renttype - building: n - n
            Join<Object, Object> typeJoin = root.join("rentTypeEntities");

            return typeJoin.get("code").in(typecode);
        });
    }
}
