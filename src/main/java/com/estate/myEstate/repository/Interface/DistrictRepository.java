package com.estate.myEstate.repository.Interface;

import com.estate.myEstate.model.entity.DistrictEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface DistrictRepository extends JpaRepository<DistrictEntity, Integer> {

    Optional<DistrictEntity> findByName(String name);
}
