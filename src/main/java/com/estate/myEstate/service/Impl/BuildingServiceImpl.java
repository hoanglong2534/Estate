package com.estate.myEstate.service.Impl;

import com.estate.myEstate.converter.BuildingEntityToBuildingResponeDTO;
import com.estate.myEstate.model.dto.BuildingRequestDTO;
import com.estate.myEstate.model.dto.BuildingResponseDTO;
import com.estate.myEstate.model.entity.BuildingEntity;
import com.estate.myEstate.repository.Interface.BuildingRepository;
import com.estate.myEstate.repository.Specification.Builder.BuildingSpecificationBuilder;
import com.estate.myEstate.service.Interface.BuildingService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class BuildingServiceImpl implements BuildingService {

    @Autowired
    private final BuildingRepository buildingRepository;
    private final BuildingEntityToBuildingResponeDTO buildingEntityToBuildingResponeDTO;


    @Override
    public List<BuildingResponseDTO> searchBuilding(BuildingRequestDTO buildingRequestDTO) {

        System.out.println("Building Type in DTO: " + buildingRequestDTO.getBuildingtype());

        Specification<BuildingEntity> specification = BuildingSpecificationBuilder.build(buildingRequestDTO);

        System.out.println("Generated Specification:hehehhehheheeee " + specification);

        List<BuildingEntity> buildingEntities = buildingRepository.findAll(specification);
        return buildingEntities.stream().map(buildingEntityToBuildingResponeDTO::convertBuildingDTO).toList();
    }

    @Override
    public boolean deleteBuilding(Long id) {
        if(buildingRepository.existsById(id)){
            buildingRepository.deleteById(id);
            return true;
        }
        return false;
    }

    @Override
    public boolean deleteBuildings(List<Long> ids) {
        if (ids != null && !ids.isEmpty()) {
            buildingRepository.deleteAllById(ids);
            return true;
        }
        return false;
    }

}
