package com.javaweb.demo.Repository.Specification.Filter;

import com.javaweb.demo.Repository.Entity.BuildingEntity;
import jakarta.persistence.criteria.Join;
import org.springframework.boot.autoconfigure.info.ProjectInfoProperties;
import org.springframework.data.jpa.domain.Specification;

public class HasStaff {
    public static Specification<BuildingEntity> with(Long assignmentbuilding) {
        return((root, query, criteriaBuilder) -> {
            if(assignmentbuilding == null) return null;

            //Join: user - building: n - n
            Join<Object, Object> staffJoin = root.join("userEntities");
            return criteriaBuilder.equal(staffJoin.get("id"), assignmentbuilding);
        });
    }
}
