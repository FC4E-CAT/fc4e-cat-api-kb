package org.grnet.knowledgebase.api.entity;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import org.eclipse.microprofile.graphql.Description;

import java.time.ZonedDateTime;

@Entity
@Table(name = "k_Scheme")
public class Scheme extends PanacheEntityBase {

    @Id
    @Column(name = "lodSCH", nullable = false)
    @Description("Unique identifier for the Scheme")
    public String lodSCH;

    @Column(name = "IDSCH")
    @Description("The identifier of the Scheme")
    public Integer idSCH;

    @Column(name = "SCH")
    @Description("The name of the Scheme")
    public String nameSCH;

    @Column(name = "labelScheme")
    @Description("The label of the Scheme")
    public String labelScheme;

    @Column(name = "descScheme", columnDefinition = "TEXT")
    @Description("The description of the Scheme")
    public String descScheme;

    @Column(name = "lodTSC", nullable = false)
    @Description("The unique identifier of the Type Scheme")
    public String lodTSC;

    @Column(name = "lodSCH_V")
    @Description("The version of the Scheme")
    public String version;


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
