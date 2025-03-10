package com.estate.myEstate.model.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Entity
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "renttype")
public class RentTypeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "code")
    private String code;

    @Column(name = "name")
    private String name;

    //  relation table building: n - n
    @ManyToMany(mappedBy = "rentTypeEntities", fetch = FetchType.LAZY)
    private List<BuildingEntity> buildingEntities = new ArrayList<>();
}
