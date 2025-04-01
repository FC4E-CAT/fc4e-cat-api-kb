package org.grnet.knowledgebase.api.entity.relation;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.*;
import org.eclipse.microprofile.graphql.Description;
import org.grnet.knowledgebase.api.entity.Standard;
import org.grnet.knowledgebase.api.entity.StandardsBody;

@Entity
@Table(name = "k_Standard_StandardsBody")
public class StandardStandardsBody extends PanacheEntityBase {
    @EmbeddedId
    @Description("The combined ID of the Standard-StandardsBody relation")
    public StandardStandardsBodyId id;

    @ManyToOne
    @JoinColumn(name = "lod_STD", referencedColumnName = "lodSTD", insertable = false, updatable = false)
    @Description("The Standard")
    public Standard standard;

    @ManyToOne
    @JoinColumn(name = "lodSTB", referencedColumnName = "lodSTB", insertable = false, updatable = false)
    @Description("The StandardBody")
    public StandardsBody standardsBody;

    @Column(name = "lodRelation")
    @Description("The relation between Standard and StandardBody")
    public String lodRelation;

    @Column(name = "populatedBy")
    @Description("populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    @Description("lastTouch")
    public String lastTouch;
}
