package com.javaweb.demo.Repository.Interface;

import com.javaweb.demo.DTO.BuildingDTO;
import com.javaweb.demo.DTO.BuildingRequestDTO;
import com.javaweb.demo.Repository.Entity.BuildingEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BuildingRepository extends JpaRepository<BuildingEntity, Long> , JpaSpecificationExecutor<BuildingEntity> {

}
