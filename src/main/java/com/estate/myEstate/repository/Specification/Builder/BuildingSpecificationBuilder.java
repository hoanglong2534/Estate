package com.estate.myEstate.repository.Specification.Builder;

import com.estate.myEstate.model.dto.BuildingRequestDTO;
import com.estate.myEstate.model.entity.BuildingEntity;
import com.estate.myEstate.repository.Specification.Filter.*;
import com.estate.myEstate.repository.Specification.Filter.HasName;
import org.springframework.data.jpa.domain.Specification;

public class BuildingSpecificationBuilder {
    public static Specification<BuildingEntity> build(BuildingRequestDTO buildingRequestDTO) {
        Specification<BuildingEntity> specification = Specification.where(null);

        if(buildingRequestDTO.getName() != null && !buildingRequestDTO.getName().isEmpty()) {
            specification = specification.and(HasName.with(buildingRequestDTO.getName()));
        }

        if(buildingRequestDTO.getFloorarea()!= null && !buildingRequestDTO.getFloorarea().isEmpty()) {
            specification =  specification.and(HasFloorArea.with(buildingRequestDTO.getFloorarea()));
        }

        if(buildingRequestDTO.getDistrictid()!= null){
            specification = specification.and(HasDistrict.with(buildingRequestDTO.getDistrictid()));
        }

        if(buildingRequestDTO.getWard()!= null && !buildingRequestDTO.getWard().isEmpty()) {
            specification =  specification.and(HasWard.with(buildingRequestDTO.getWard()));
        }

        if(buildingRequestDTO.getStreet()!= null && !buildingRequestDTO.getStreet().isEmpty()) {
            specification =  specification.and(HasStreet.with(buildingRequestDTO.getStreet()));
        }

        if(buildingRequestDTO.getNumberofbasement()!= null) {
            specification =  specification.and(HasNumberOfBasement.with(buildingRequestDTO.getNumberofbasement()));
        }

        if(buildingRequestDTO.getDirection()!= null && !buildingRequestDTO.getDirection().isEmpty()) {
            specification =  specification.and(HasDirection.with(buildingRequestDTO.getDirection()));
        }

        if(buildingRequestDTO.getLevel()!= null) {
            specification =  specification.and(HasLevel.with(buildingRequestDTO.getLevel()));
        }

        System.out.println("RentAreaFrom: " + buildingRequestDTO.getRentareafrom());
        System.out.println("RentAreaTo: " + buildingRequestDTO.getRentareato());
        System.out.println("RentPriceFrom: " + buildingRequestDTO.getRentpricefrom());
        System.out.println("RentPriceTo: " + buildingRequestDTO.getRentpriceto());


        if (buildingRequestDTO.getRentareafrom() != null || buildingRequestDTO.getRentareato() != null) {
            Integer rentAreaFrom = null;
            Integer rentAreaTo = null;

            if (buildingRequestDTO.getRentareafrom() != null) {
                try {
                    rentAreaFrom = Integer.parseInt(buildingRequestDTO.getRentareafrom());
                } catch (NumberFormatException e) {
                    // Xử lý nếu giá trị không hợp lệ
                }
            }

            if (buildingRequestDTO.getRentareato() != null) {
                try {
                    rentAreaTo = Integer.parseInt(buildingRequestDTO.getRentareato());
                } catch (NumberFormatException e) {
                    // Xử lý nếu giá trị không hợp lệ
                }
            }

            System.out.println("GOI ham HasRentAreaRangeeeee");
            specification = specification.and(HasRentAreaRange.with(rentAreaFrom, rentAreaTo));
        }

        if (buildingRequestDTO.getRentpricefrom() != null || buildingRequestDTO.getRentpriceto() != null) {
            Integer rentPriceFrom = null;
            Integer rentPriceTo = null;

            if (buildingRequestDTO.getRentpricefrom() != null) {
                try {
                    rentPriceFrom = Integer.parseInt(buildingRequestDTO.getRentpricefrom());
                } catch (NumberFormatException e) {
                    // Xử lý nếu giá trị không hợp lệ
                }
            }

            if (buildingRequestDTO.getRentpriceto() != null) {
                try {
                    rentPriceTo = Integer.parseInt(buildingRequestDTO.getRentpriceto());
                } catch (NumberFormatException e) {
                    // Xử lý nếu giá trị không hợp lệ
                }
            }

            specification = specification.and(HasRentPriceRange.with(rentPriceFrom, rentPriceTo));
        }


        if(buildingRequestDTO.getManagername()!= null && !buildingRequestDTO.getManagername().isEmpty()) {
            specification =  specification.and(HasManagerName.with(buildingRequestDTO.getManagername()));
        }
        if(buildingRequestDTO.getManagerphonenumber()!= null && !buildingRequestDTO.getManagerphonenumber().isEmpty()) {
            specification =  specification.and(HasManagerPhoneNumber.with(buildingRequestDTO.getManagerphonenumber()));
        }

        if(buildingRequestDTO.getStaffid()!= null) {
            specification =  specification.and(HasStaff.with(buildingRequestDTO.getStaffid()));
        }

        if(buildingRequestDTO.getBuildingtype() != null && !buildingRequestDTO.getBuildingtype().isEmpty()) {
            specification  = specification.and(HasBuildingType.with(buildingRequestDTO.getBuildingtype()));
        }

        return specification;
    }
}
