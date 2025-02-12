package org.grnet.knowledgebase.api.entity;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.time.LocalDate;
import java.time.ZonedDateTime;

@Entity
@Table(name = "k_Provider")
public class Provider extends PanacheEntityBase {

    @Id
    @Column(name = "lodPRV", nullable = false)
    public String lodPRV;

    @Column(name = "IDPRV")
    public Integer IDPRV;

    @Column(name = "PRV")
    public String PRV;

    @Column(name = "labelProvider")
    public String labelProvider;

    @Column(name = "descProvider", columnDefinition = "TEXT")
    public String descProvider;

    @Column(name = "lodTPR")
    public String lodTPR;

    @Column(name = "lodPRV_V")
    public String lodPRV_V;

    @Column(name = "Country", columnDefinition = "TEXT")
    public String Country;

    @Column(name = "startDate")
    public ZonedDateTime startDate;

    @Column(name = "populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    public LocalDate lastTouch;
}
