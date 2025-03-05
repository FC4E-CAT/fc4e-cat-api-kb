package org.grnet.knowledgebase.api.entity;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.time.ZonedDateTime;

@Entity
@Table(name = "k_Standard")
public class Standard extends PanacheEntityBase {

    @Id
    @Column(name = "lodSTD", nullable = false)
    public String lodSTD;

    @Column(name = "IDSTD")
    public Integer IDSTD;

    @Column(name = "STD")
    public String STD;

    @Column(name = "labelStandard")
    public String labelStandard;

    @Column(name = "descStandard", columnDefinition = "TEXT")
    public String descStandard;

    @Column(name = "lodTST", nullable = false)
    public String lodTST;

    @Column(name = "lodSTD_V")
    public String lodSTD_V;


    @Column(name = "startDate")
    public ZonedDateTime startDate;

    @Column(name = "populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    public String lastTouch;
}
