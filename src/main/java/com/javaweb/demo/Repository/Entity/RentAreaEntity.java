package com.javaweb.demo.Repository.Entity;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "rentarea")
public class RentAreaEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "value")
    private Integer value;

    @Column(name = "createddate")
    private Date createddate;

    @Column(name = "modifieddate")
    private Date modifieddate;

    @Column(name = "createdby")
    private String createdby;

    @Column(name = "modifiedby")
    private String modifiedby;

//   relation table building: n - 1
    @ManyToOne
    @JoinColumn(name = "buildingid")
    private BuildingEntity buildingEntity;

}
