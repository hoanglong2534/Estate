package com.javaweb.demo.DTO;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
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
