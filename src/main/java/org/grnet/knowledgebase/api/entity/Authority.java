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
    @Description("Unique identifier for the Authority")
    public String lodAUT;

    @Column(name = "IDAUT")
    @Description("The identifier of the Authority")
    public Integer IDAUT;

    @Column(name = "AUT")
    @Description("The name of the Authority")
    public String AUT;

    @Column(name = "labelAuthority")
    @Description("The label of the Authority")
    public String labelAuthority;

    @Column(name = "descAuthority", columnDefinition = "TEXT")
    @Description("The description of the Authority")
    public String descAuthority;

    @Column(name = "populatedBy")
    @Description("populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    @Description("lastTouch")
    public String lastTouch;
}
