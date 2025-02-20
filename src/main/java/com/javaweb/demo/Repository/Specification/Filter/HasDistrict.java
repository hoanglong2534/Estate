package com.javaweb.demo.Repository.Specification.Filter;

import com.javaweb.demo.Repository.Entity.BuildingEntity;
import com.javaweb.demo.Repository.Entity.DistrictEntity;
import org.springframework.data.jpa.domain.Specification;

public class HasDistrict {
    public static Specification<BuildingEntity> with(Long districtid) {
        return((root, query, criteriaBuilder) -> {
            if(districtid == null) return null;
            return criteriaBuilder.equal(root.get("districtEntity").get("id"), districtid);
        });
    }
}
