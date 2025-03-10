package com.estate.myEstate.model.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BuildingRequestDTO {
    private String name;
    private String floorarea;
    private Long districtid;
    private String ward;
    private String street;
    private Long numberofbasement;
    private String direction;
    private Long level;
    private String rentareato;
    private String rentareafrom;
    private String rentpricefrom;
    private String rentpriceto;
    private String managername;
    private String managerphonenumber;
    private Long staffid;
    private List<String> buildingtype;
}
