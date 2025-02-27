package org.grnet.knowledgebase.api.entity.relation;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.*;
import org.grnet.knowledgebase.api.entity.Standard;

@Entity
@Table(name = "k_Standard_StandardsBody")
public class StandardStandardsBody extends PanacheEntityBase {
    @EmbeddedId
    public StandardStandardsBodyId id;

    @ManyToOne
    @JoinColumn(name = "lod_STD", referencedColumnName = "lodSTD", insertable = false, updatable = false)
    public Standard standard;

    @ManyToOne
    @JoinColumn(name = "lodSTB", referencedColumnName = "lodSTB", insertable = false, updatable = false)
    public StandardsBody standardsBody;

    @Column(name = "lodRelation")
    public String lodRelation;

    @Column(name = "populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    public String lastTouch;
}
