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
    @Description("Unique identifier for the entry")
    public String lodTSC;

    @Column(name = "IDTSC")
    @Description("The identifier code")
    public Integer IDTSC;

    @Column(name = "typeScheme")
    @Description("The type code")
    public String typeScheme;

    @Column(name = "populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    public String lastTouch;
}
