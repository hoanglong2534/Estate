package com.estate.myEstate.model.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;


@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "district")
public class DistrictEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "code")
    private String code;

    @Column(name = "name")
    private String name;

    //    relation table building: 1 - n
    @OneToMany(mappedBy = "districtEntity",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
    private List<BuildingEntity> buildingEntities = new ArrayList<>();
}
