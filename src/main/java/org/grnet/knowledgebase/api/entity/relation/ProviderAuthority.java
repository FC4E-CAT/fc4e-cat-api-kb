package org.grnet.knowledgebase.api.entity.relation;


import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.*;
import org.grnet.knowledgebase.api.entity.Authority;
import org.grnet.knowledgebase.api.entity.Provider;

@Entity
@Table(name = "k_Manager_Provider")
public class ProviderAuthority extends PanacheEntityBase {

    @EmbeddedId
    public ProviderAuthorityId id;

    @ManyToOne
    @JoinColumn(name = "lod_PRV", referencedColumnName = "lodPRV", insertable = false, updatable = false)
    public Provider provider;

    @ManyToOne
    @JoinColumn(name = "lodAUT", referencedColumnName = "lodAUT", insertable = false, updatable = false)
    public Authority authority;

    @Column(name = "lodRelation")
    public String lodRelation;

    @Column(name = "populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    public String lastTouch;
}
