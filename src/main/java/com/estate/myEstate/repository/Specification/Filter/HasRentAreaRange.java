package com.estate.myEstate.repository.Specification.Filter;

import com.estate.myEstate.model.entity.BuildingEntity;
import jakarta.persistence.criteria.JoinType;
import jakarta.persistence.criteria.Predicate;
import org.springframework.data.jpa.domain.Specification;

import java.util.ArrayList;

public class HasRentAreaRange {
    public static Specification<BuildingEntity> with(Integer from, Integer to) {
        return (root, query, criteriaBuilder) -> {
            // Nếu không có điều kiện lọc, trả về null
            if (from == null && to == null) {
                return null;
            }

            // Sử dụng distinct để tránh kết quả trùng lặp
            query.distinct(true);

            // Sử dụng var để khai báo kiểu tự suy (JDK 10+)
            var rentAreaJoin = root.join("rentAreaEntities", JoinType.LEFT);

            // Tạo danh sách predicates để lưu các điều kiện lọc
            var predicates = new ArrayList<Predicate>();

            if (from != null) {
                predicates.add(criteriaBuilder.greaterThanOrEqualTo(rentAreaJoin.get("value"), from));
            }

            if (to != null) {
                predicates.add(criteriaBuilder.lessThanOrEqualTo(rentAreaJoin.get("value"), to));
            }

            // Nếu có điều kiện, áp dụng tất cả các điều kiện
            return criteriaBuilder.and(predicates.toArray(Predicate[]::new));
        };
    }
}
