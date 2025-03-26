package org.grnet.knowledgebase.api.entity;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import org.eclipse.microprofile.graphql.Description;

import java.time.ZonedDateTime;

@Entity
@Table(name = "k_Manager")
public class Manager extends PanacheEntityBase {

    @Id
    @Column(name = "lodMAN", nullable = false)
    @Description("Unique identifier for the Manager")
    public String lodMAN;

    @Column(name = "MAN")
    @Description("The name of the Manager")
    public String nameManager;

    @Column(name = "labelManager")
    @Description("The label of the Manager")
    public String labelManager;

    @Column(name = "descManager", columnDefinition = "TEXT")
    @Description("The description of the Manager")
    public String descManager;

    @Column(name = "lodMAN_V")
    @Description("The version of the Manager")
    public String version;

    @Column(name = "Certification", columnDefinition = "TEXT")
    @Description("The certification of the Manager")
    public String certification;

    @Column(name = "Country", columnDefinition = "TEXT")
    @Description("The country of the Manager")
    public String country;

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
