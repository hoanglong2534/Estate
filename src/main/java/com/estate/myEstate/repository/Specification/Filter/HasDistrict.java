package com.estate.myEstate.repository.Specification.Filter;

import com.estate.myEstate.model.entity.BuildingEntity;
import org.springframework.data.jpa.domain.Specification;

public class HasDistrict {
    public static Specification<BuildingEntity> with(Long districtid) {
        return((root, query, criteriaBuilder) -> {
            if(districtid == null) return null;
            return criteriaBuilder.equal(root.get("districtEntity").get("id"), districtid);
        });
    }
}
