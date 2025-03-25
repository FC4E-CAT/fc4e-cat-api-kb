package org.grnet.knowledgebase.api.entity.type;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import org.eclipse.microprofile.graphql.Description;

@Entity
@Table(name = "k_Type_Scheme")
public class TypeScheme extends PanacheEntityBase {

    @Id
    @Column(name = "lodTSC", nullable = false)
    @Description("Unique identifier for the Type Scheme")
    public String lodTSC;

    @Column(name = "IDTSC")
    @Description("The identifier of the Type Scheme")
    public Integer idTSC;

    @Column(name = "typeScheme")
    @Description("The name of the Type Scheme")
    public String typeScheme;

    @Column(name = "populatedBy")
    @Description("populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    @Description("lastTouch")
    public String lastTouch;
}
