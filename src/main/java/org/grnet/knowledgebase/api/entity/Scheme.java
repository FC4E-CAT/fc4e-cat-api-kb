package org.grnet.knowledgebase.api.entity;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.time.ZonedDateTime;

@Entity
@Table(name = "k_Scheme")
public class Scheme extends PanacheEntityBase {

    @Id
    @Column(name = "lodSCH", nullable = false)
    public String lodSCH;

    @Column(name = "IDSCH")
    public Integer IDSCH;

    @Column(name = "SCH")
    public String SCH;

    @Column(name = "labelScheme")
    public String labelScheme;

    @Column(name = "descScheme", columnDefinition = "TEXT")
    public String descScheme;

    @Column(name = "lodTSC", nullable = false)
    public String lodTSC;

    @Column(name = "lodSCH_V")
    public String lodSCH_V;


    @Column(name = "startDate")
    public ZonedDateTime startDate;

    @Column(name = "populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    public String lastTouch;
}
