package org.grnet.knowledgebase.api.entity;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import org.eclipse.microprofile.graphql.Description;

@Entity
@Table(name = "k_Authority")
public class Authority extends PanacheEntityBase {

    @Id
    @Column(name = "lodAUT", nullable = false)
    @Description("Unique identifier for the entry")
    public String lodAUT;

    @Column(name = "IDAUT")
    @Description("The identifier code")
    public Integer IDAUT;

    @Column(name = "AUT")
    public String AUT;

    @Column(name = "labelAuthority")
    public String labelAuthority;

    @Column(name = "descAuthority", columnDefinition = "TEXT")
    public String descAuthority;

    @Column(name = "populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    public String lastTouch;
}
