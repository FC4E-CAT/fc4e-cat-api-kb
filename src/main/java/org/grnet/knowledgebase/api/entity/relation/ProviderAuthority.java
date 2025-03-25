package org.grnet.knowledgebase.api.entity.relation;


import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.*;
import org.eclipse.microprofile.graphql.Description;
import org.grnet.knowledgebase.api.entity.Authority;
import org.grnet.knowledgebase.api.entity.Provider;

@Entity
@Table(name = "k_Provider_Authority")
public class ProviderAuthority extends PanacheEntityBase {

    @EmbeddedId
    @Description("The combined ID of the Provider-Authority relation")
    public ProviderAuthorityId id;

    @ManyToOne
    @JoinColumn(name = "lod_PRV", referencedColumnName = "lodPRV", insertable = false, updatable = false)
    @Description("The Provider")
    public Provider provider;

    @ManyToOne
    @JoinColumn(name = "lodAUT", referencedColumnName = "lodAUT", insertable = false, updatable = false)
    @Description("The Authority")
    public Authority authority;

    @Column(name = "lodRelation")
    @Description("The relations between Provider and Authority")
    public String lodRelation;

    @Column(name = "populatedBy")
    @Description("populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    @Description("lastTouch")
    public String lastTouch;
}
