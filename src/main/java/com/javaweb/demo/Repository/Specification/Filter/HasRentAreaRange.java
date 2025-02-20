package com.javaweb.demo.Repository.Specification.Filter;

import com.javaweb.demo.Repository.Entity.BuildingEntity;
import com.javaweb.demo.Repository.Entity.RentAreaEntity;
import org.springframework.data.jpa.domain.Specification;
import jakarta.persistence.criteria.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

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