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
@Table(name = "k_Property")
public class Property extends PanacheEntityBase {

    @Id
    @Column(name = "lodPRP", nullable = false)
    @Description("Unique identifier for the Property")
    public String lodPRP;

    @Column(name = "IDTPR")
    public Integer IDTPR;

    @Column(name = "labelProperty")
    @Description("The label of the Property")
    public String labelProperty;

    @Column(name = "descProperty", columnDefinition = "TEXT")
    @Description("The description of the Property")
    public String descProvider;

    @Column(name = "lodCanonical")
    @Description("The label of the Property")
    public String lodCanonical;

    @Column(name = "alternateIdentifier", columnDefinition = "TEXT")
    @Description("The alternative Identifiers that are associated with the Property")
    public String alternateIdentifier;

    @Column(name = "IDPRP_P")
    @Description("The parent of the id if the Property")
    public String IDPRP_P;

    @Column(name = "IDPRP_V")
    @Description("The version of the id of the Property")
    public String IDPRP_V;

    @Column(name = "lodTPR")
    @Description("The unique identifier of the Type Property")
    public String lodTPR;

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
