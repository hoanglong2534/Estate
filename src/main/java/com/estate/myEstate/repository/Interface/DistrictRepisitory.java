package com.estate.myEstate.repository.Interface;

import com.estate.myEstate.model.entity.DistrictEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DistrictRepisitory extends JpaRepository<DistrictEntity, Integer> {
    List<DistrictEntity> findByName(String name);

    String name(String name);
}
