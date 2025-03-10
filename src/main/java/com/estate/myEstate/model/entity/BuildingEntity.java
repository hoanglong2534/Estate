package com.estate.myEstate.model.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "building")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class BuildingEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "street")
    private String street;

    @Column(name = "ward")
    private String ward;

    @Column(name = "structure")
    private String structure;

    @Column(name = "numberofbasement")
    private Integer numberofbasement;

    @Column(name = "floorarea")
    private Integer floorarea;

    @Column(name = "direction")
    private String direction;

    @Column(name = "level")
    private String level;

    @Column(name = "rentprice")
    private Integer rentprice;

    @Column(name = "rentpricedescription")
    private String rentpricedescription;

    @Column(name = "servicefee")
    private String servicefee;

    @Column(name = "carfee")
    private String carfee;

    @Column(name = "motorbikefee")
    private String motorbikefee;

    @Column(name = "overtimefee")
    private String overtimefee;

    @Column(name = "waterfee")
    private String waterfee;

    @Column(name = "electricityfee")
    private String electricityfee;

    @Column(name = "deposit")
    private String deposit;

    @Column(name = "payment")
    private String payment;

    @Column(name = "renttime")
    private String renttime;

    @Column(name = "decorationtime")
    private String decorationtime;

    @Column(name = "brokeragefee")
    private Long brokeragefee;

    @Column(name = "note")
    private String note;

    @Column(name = "linkofbuilding")
    private String linkofbuilding;

    @Column(name = "map")
    private String map;

    @Column(name = "image")
    private String image;

    @Column(name = "createddate")
    private Date createddate;

    @Column(name = "modifieddate")
    private Date modifieddate;

    @Column(name = "createdby")
    private String createdby;

    @Column(name = "modifiedby")
    private String modifiedby;

    @Column(name = "managername")
    private String managername;

    @Column(name = "managerphonenumber")
    private String managerphonenumber;

    // relation table district: n - 1
    @ManyToOne
    @JoinColumn(name = "districtid", nullable = false)
    private DistrictEntity districtEntity;

    // relation table rentarea: 1 - n
    @OneToMany(mappedBy = "buildingEntity", cascade = CascadeType.ALL)
    private List<RentAreaEntity> rentAreaEntities = new ArrayList<>();

    // relation table renttype: n - n
    @ManyToMany
    @JoinTable(name = "buildingrenttype",
            joinColumns = @JoinColumn(name = "buildingid"),
            inverseJoinColumns = @JoinColumn(name = "renttypeid"))
    private List<RentTypeEntity> rentTypeEntities = new ArrayList<>();

    //  relation table user: n - n
    @ManyToMany
    @JoinTable(name = "assignmentbuilding",
            joinColumns = @JoinColumn(name = "buildingid"),
            inverseJoinColumns = @JoinColumn(name = "staffid"))
    private List<UserEntity> userEntities = new ArrayList<>();
}
