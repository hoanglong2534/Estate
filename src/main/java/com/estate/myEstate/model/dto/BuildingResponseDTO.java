package com.estate.myEstate.model.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BuildingResponseDTO {
    private String name;
    private String address;
    private Integer numberOfBasement;
    private String managerName;
    private String managerPhoneNumber;
    private Integer floorArea;
    private Integer emptyArea;
    private String rentArea;
    private String serviceFee;
    private Integer rentPrice;
    private Long brokerageFee;
    private String level;
}
