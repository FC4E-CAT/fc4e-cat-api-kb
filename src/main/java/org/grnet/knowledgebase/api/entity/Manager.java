package org.grnet.knowledgebase.api.entity;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.time.ZonedDateTime;

@Entity
@Table(name = "k_Manager")
public class Manager extends PanacheEntityBase {

    @Id
    @Column(name = "lodMAN", nullable = false)
    public String lodMAN;

    @Column(name = "MAN")
    public String MAN;

    @Column(name = "labelManager")
    public String labelManager;

    @Column(name = "descManager", columnDefinition = "TEXT")
    public String descManager;

    @Column(name = "lodMAN_V")
    public String lodMAN_V;

    @Column(name = "Certification", columnDefinition = "TEXT")
    public String Certification;

    @Column(name = "Country")
    public String Country;

    @Column(name = "startDate")
    public ZonedDateTime startDate;

    @Column(name = "populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    public String lastTouch;
}
