package com.estate.myEstate.service.Impl;

import com.estate.myEstate.model.dto.BuildingRequestDTO;
import com.estate.myEstate.model.entity.BuildingEntity;
import com.estate.myEstate.repository.Interface.BuildingRepository;
import com.estate.myEstate.repository.Specification.Builder.BuildingSpecificationBuilder;
import com.estate.myEstate.service.Interface.BuildingService;
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
