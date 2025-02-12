package org.grnet.knowledgebase.api.entity;


import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import org.eclipse.microprofile.graphql.Description;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.time.ZonedDateTime;

@Entity
@Table(name = "k_Identifier")
public class Identifier extends PanacheEntityBase {

    @Id
    @Column(name = "lodIDN", nullable = false)
    @Description("Unique identifier for the entry")
    public String lodIDN;

    @Column(name = "IDIDN")
    @Description("The identifier code")
    public Integer IDIDN;

    @Column(name = "IDN")
    @Description("The identifier code")
    public String IDN;

    @Column(name = "labelIdentifier")
    @Description("A label for the identifier")
    public String labelIdentifier;

    @Column(name = "descIdentifier", columnDefinition = "TEXT")
    @Description("A description for the identifier")
    public String descIdentifier;

    @Column(name = "lodIND_V")
    public String lodIND_V;

    @Column(name = "startDate")
    public ZonedDateTime startDate;

    @Column(name = "populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    public String lastTouch;
}
