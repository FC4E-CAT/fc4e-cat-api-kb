package org.grnet.knowledgebase.api.entity;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import org.eclipse.microprofile.graphql.Description;

import java.time.LocalDate;
import java.time.ZonedDateTime;

@Entity
@Table(name = "k_Provider")
public class Provider extends PanacheEntityBase {

    @Id
    @Column(name = "lodPRV", nullable = false)
    @Description("Unique identifier for the Provider")
    public String lodPRV;

    @Column(name = "IDPRV")
    public Integer IDPRV;

    @Column(name = "PRV")
    @Description("The identifier of the Provider")
    public String PRV;

    @Column(name = "labelProvider")
    @Description("The label of the Provider")
    public String labelProvider;

    @Column(name = "descProvider", columnDefinition = "TEXT")
    @Description("The description of the Provider")
    public String descProvider;

    @Column(name = "lodTPR")
    @Description("The unique identifier of the Type Provider")
    public String lodTPR;

    @Column(name = "lodPRV_V")
    @Description("The version of the Provider")
    public String lodPRV_V;

    @Column(name = "Country", columnDefinition = "TEXT")
    @Description("The country of the Provider")
    public String Country;

    @Column(name = "startDate")
    @Description("startDate")
    public ZonedDateTime startDate;

    @Column(name = "populatedBy")
    @Description("populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    @Description("lastTouch")
    public LocalDate lastTouch;
}
