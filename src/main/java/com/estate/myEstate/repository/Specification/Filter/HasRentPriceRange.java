package com.estate.myEstate.repository.Specification.Filter;

import com.estate.myEstate.model.entity.BuildingEntity;
import org.springframework.data.jpa.domain.Specification;
import jakarta.persistence.criteria.Predicate;

import java.util.ArrayList;
import java.util.List;



public class HasRentPriceRange {
    public static Specification<BuildingEntity> with(Integer from, Integer to) {
        return (root, query, criteriaBuilder) -> {
            // Nếu không có điều kiện lọc, trả về null
            if (from == null && to == null) {
                return null;
            }

            // Sử dụng distinct để tránh kết quả trùng lặp
            query.distinct(true);

            // Tạo danh sách predicates để lưu các điều kiện lọc
            List<Predicate> predicates = new ArrayList<>();

            // Nếu giá trị "from" không phải null, thêm điều kiện lớn hơn hoặc bằng
            if (from != null) {
                predicates.add(criteriaBuilder.greaterThanOrEqualTo(root.get("rentprice"), from));
            }

            // Nếu giá trị "to" không phải null, thêm điều kiện nhỏ hơn hoặc bằng
            if (to != null) {
                predicates.add(criteriaBuilder.lessThanOrEqualTo(root.get("rentprice"), to));
            }

            // Nếu có điều kiện, áp dụng tất cả các điều kiện
            return criteriaBuilder.and(predicates.toArray(new Predicate[0]));
        };
    }
}
