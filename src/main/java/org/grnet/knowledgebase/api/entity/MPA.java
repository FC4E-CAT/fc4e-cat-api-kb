package org.grnet.knowledgebase.api.entity;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import org.eclipse.microprofile.graphql.Description;

@Entity
@Table(name = "k_Type_Manager")
public class MPA extends PanacheEntityBase {

    @Id
    @Column(name = "lodMPA", nullable = false)
    @Description("Unique identifier for the entry")
    public String lodMPA;

    @Column(name = "IDMPA")
    @Description("The identifier code")
    public Integer IDMPA;

    @Column(name = "MPA")
    public String MPA;

    @Column(name = "labelMPA")
    public String labelMPA;

    @Column(name = "descMPA", columnDefinition = "TEXT")
    public String descMPA;

    @Column(name = "startDate")
    public String startDate;

    @Column(name = "populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    public String lastTouch;
}
