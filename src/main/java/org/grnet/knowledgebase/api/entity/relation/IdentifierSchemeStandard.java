package org.grnet.knowledgebase.api.entity.relation;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.*;
import org.grnet.knowledgebase.api.entity.Identifier;
import org.grnet.knowledgebase.api.entity.Scheme;
import org.grnet.knowledgebase.api.entity.Standard;

@Entity
@Table(name = "k_Identifier_Scheme_Standard")
public class IdentifierSchemeStandard extends PanacheEntityBase {

    @EmbeddedId
    private IdentifierSchemeStandardId id;

    @ManyToOne
    @JoinColumn(name = "lodIDN", referencedColumnName = "lodIDN", insertable = false, updatable = false)
    private Identifier identifier;

    @ManyToOne
    @JoinColumn(name = "lodSCH", referencedColumnName = "lodSCH", insertable = false, updatable = false)
    private Scheme scheme;

    @ManyToOne
    @JoinColumn(name = "lodSTD", referencedColumnName = "lodSTD", insertable = false, updatable = false)
    private Standard standard;

    @Column(name = "IDN")
    public String IDN;
    @Column(name = "SCH")
    public String SCH;
    @Column(name = "STD")
    public String STD;

    @Column(name = "populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    public String lastTouch;
}
