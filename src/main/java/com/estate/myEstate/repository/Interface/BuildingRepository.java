package com.estate.myEstate.repository.Interface;

import com.estate.myEstate.model.entity.BuildingEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface BuildingRepository extends JpaRepository<BuildingEntity, Long>, JpaSpecificationExecutor<BuildingEntity> {
}
