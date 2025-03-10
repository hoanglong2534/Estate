package com.estate.myEstate.repository.Specification.Filter;


import com.estate.myEstate.model.entity.BuildingEntity;
import jakarta.persistence.criteria.Join;
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
