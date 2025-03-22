package org.grnet.knowledgebase.api.entity;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import org.eclipse.microprofile.graphql.Description;

import java.time.ZonedDateTime;

@Entity
@Table(name = "k_Standard")
public class Standard extends PanacheEntityBase {

    @Id
    @Column(name = "lodSTD", nullable = false)
    @Description("The identifier of the Standard")
    public String lodSTD;

    @Column(name = "IDSTD")
    @Description("The identifier of the Standard")
    public Integer IDSTD;

    @Column(name = "STD")
    @Description("The name of the Standard")
    public String STD;

    @Column(name = "labelStandard")
    @Description("The label of the Standard")
    public String labelStandard;

    @Column(name = "descStandard", columnDefinition = "TEXT")
    @Description("The description of the Standard") public String descStandard;

    @Column(name = "lodTST", nullable = false)
    @Description("The unique identifier of the Type Standard")
    public String lodTST;

    @Column(name = "lodSTD_V")
    @Description("The version of the Standard")
    public String lodSTD_V;


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
