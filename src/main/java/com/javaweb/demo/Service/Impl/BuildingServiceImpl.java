package com.javaweb.demo.Service.Impl;

import com.javaweb.demo.Converter.BuildingEntityToBuildingDTO;
import com.javaweb.demo.DTO.BuildingDTO;
import com.javaweb.demo.DTO.BuildingRequestDTO;
import com.javaweb.demo.Repository.Entity.BuildingEntity;
import com.javaweb.demo.Repository.Interface.BuildingRepository;
import com.javaweb.demo.Repository.Specification.Builder.BuildingSpecificationBuilder;
import com.javaweb.demo.Service.Interface.BuildingService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class BuildingServiceImpl implements BuildingService {



    private final BuildingRepository buildingRepository;
    private final BuildingEntityToBuildingDTO converter;


    @Override
    public List<BuildingDTO> searchBuilding(BuildingRequestDTO buildingRequestDTO) {

        System.out.println("Building Type in DTO: " + buildingRequestDTO.getBuildingtype());

        Specification<BuildingEntity> specification = BuildingSpecificationBuilder.build(buildingRequestDTO);

        System.out.println("Generated Specification:hehehhehheheeee " + specification);

        List<BuildingEntity> buildingEntities = buildingRepository.findAll(specification);
        return buildingEntities.stream().map(converter::convertBuildingDTO).toList();
    }
}
