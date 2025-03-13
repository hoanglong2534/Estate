package com.estate.myEstate.model.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class BuildingAddDTO {
    private String name;
    private Integer floorarea;
    private Integer numberofbasement;
    private String district ;
    private String ward;
    private String street;
    private Integer rentarea;
    private Integer rentprice;
    private String managername;
    private String managerphonenumber;
    private String staffname;
    private List<String> buildingtype;
}
