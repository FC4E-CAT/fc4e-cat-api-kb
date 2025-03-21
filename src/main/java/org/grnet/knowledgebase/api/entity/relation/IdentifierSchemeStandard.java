package org.grnet.knowledgebase.api.entity.relation;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.*;
import org.eclipse.microprofile.graphql.Description;
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
    @Description("The identifier of the Identifier")
    private Identifier identifier;

    @ManyToOne
    @JoinColumn(name = "lodSCH", referencedColumnName = "lodSCH", insertable = false, updatable = false)
    @Description("The identifier of the Scheme")
    private Scheme scheme;

    @ManyToOne
    @JoinColumn(name = "lodSTD", referencedColumnName = "lodSTD", insertable = false, updatable = false)
    @Description("The identifier of the Standard")
    private Standard standard;

    @Column(name = "IDN")
    @Description("The name of the Identifier")
    public String IDN;
    @Column(name = "SCH")
    @Description("The name of the Scheme")
    public String SCH;
    @Column(name = "STD")
    @Description("The name of the Standard")
    public String STD;

    @Column(name = "populatedBy")
    @Description("populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    @Description("lastTouch")
    public String lastTouch;
}
