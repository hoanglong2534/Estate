package com.estate.myEstate.service.Impl;

import com.estate.myEstate.model.entity.DistrictEntity;
import com.estate.myEstate.repository.Interface.DistrictRepository;
import com.estate.myEstate.service.Interface.DistrictService;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DistrictServiceImpl implements DistrictService {
    private final DistrictRepository districtRepository;

    public DistrictServiceImpl(DistrictRepository districtRepisitory) {
        this.districtRepository = districtRepisitory;
    }

    @Override
    public List<DistrictEntity> getDistricts() {
        return districtRepository.findAll();
    }


    @Override
    public Optional<DistrictEntity> getDistrictByName(String name) {
        return districtRepository.findByName(name);
    }

    @Override
    @Transactional
    public DistrictEntity findOrCreateDistrict(String name) {
        return districtRepository.findByName(name)
                .orElseGet(() -> {
                    DistrictEntity newDistrict = new DistrictEntity();
                    newDistrict.setName(name);
                    return districtRepository.save(newDistrict);
                });
    }
}