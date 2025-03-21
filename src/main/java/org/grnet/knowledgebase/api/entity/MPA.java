package org.grnet.knowledgebase.api.entity;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import org.eclipse.microprofile.graphql.Description;

import java.time.ZonedDateTime;

@Entity
@Table(name = "k_MPA")
public class MPA extends PanacheEntityBase {

    @Id
    @Column(name = "lodMPA", nullable = false)
    @Description("Unique identifier for the Multi-Provider-Agency (MPA)")
    public String lodMPA;

    @Column(name = "IDMPA")
    @Description("The identifier code")
    public Integer IDMPA;

    @Column(name = "MPA")
    @Description("The identifier of the Multi-Provider-Agency (MPA)")
    public String MPA;

    @Column(name = "labelMPA")
    @Description("The label of the Multi-Provider-Agency (MPA)")
    public String labelMPA;

    @Column(name = "descMPA", columnDefinition = "TEXT")
    @Description("The description of the Multi-Provider-Agency (MPA)")
    public String descMPA;

    @Column(name = "startDate")
    @Description("startDate")
    public ZonedDateTime startDate;

    @Column(name = "populatedBy")
    @Description("populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    @Description("lastTouch")
    public String lastTouch;
}
