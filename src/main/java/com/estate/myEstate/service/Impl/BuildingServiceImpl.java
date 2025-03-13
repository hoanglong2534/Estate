package com.estate.myEstate.service.Impl;

import com.estate.myEstate.converter.BuildingAddDTOToBuildingEntity;
import com.estate.myEstate.converter.BuildingEntityToBuildingResponeDTO;
import com.estate.myEstate.model.dto.BuildingAddDTO;
import com.estate.myEstate.model.dto.BuildingRequestDTO;
import com.estate.myEstate.model.dto.BuildingResponseDTO;
import com.estate.myEstate.model.entity.BuildingEntity;
import com.estate.myEstate.model.entity.DistrictEntity;
import com.estate.myEstate.model.entity.UserEntity;
import com.estate.myEstate.repository.Interface.BuildingRepository;
import com.estate.myEstate.repository.Interface.UserRepository;
import com.estate.myEstate.repository.Specification.Builder.BuildingSpecificationBuilder;
import com.estate.myEstate.service.Interface.BuildingService;
import com.estate.myEstate.service.Interface.DistrictService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class BuildingServiceImpl implements BuildingService {

    private final BuildingRepository buildingRepository;
    private final BuildingEntityToBuildingResponeDTO buildingEntityToBuildingResponeDTO;
    private final BuildingAddDTOToBuildingEntity buildingAddDTOToBuildingEntity;
    private final UserRepository userRepository;
    private final DistrictService districtService;


    @Override
    public List<BuildingResponseDTO> searchBuilding(BuildingRequestDTO buildingRequestDTO) {
        Specification<BuildingEntity> specification = BuildingSpecificationBuilder.build(buildingRequestDTO);
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

    @Override
    public BuildingEntity addBuilding(BuildingAddDTO buildingAddDTO) {
        BuildingEntity buildingEntity = buildingAddDTOToBuildingEntity.convert(buildingAddDTO);

        // ✅ Tìm hoặc tạo DistrictEntity
        String districtName = buildingAddDTO.getDistrict();
        DistrictEntity districtEntity = districtService.findOrCreateDistrict(districtName);
        buildingEntity.setDistrictEntity(districtEntity);

        // ✅ Xử lý danh sách nhân viên nếu có
        List<UserEntity> staffList = userRepository.findByFullname(buildingAddDTO.getStaffname());
        if (!staffList.isEmpty()) {
            buildingEntity.setUserEntities(staffList);
        }

        return buildingRepository.save(buildingEntity);
    }


}
