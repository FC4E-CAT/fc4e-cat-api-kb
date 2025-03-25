package org.grnet.knowledgebase.api.entity.type;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import org.eclipse.microprofile.graphql.Description;

@Entity
@Table(name = "k_Type_Standard")
public class TypeStandard extends PanacheEntityBase {

    @Id
    @Column(name = "lodTST", nullable = false)
    @Description("Unique identifier for the Type Standard")
    public String lodTST;

    @Column(name = "IDTST")
    @Description("The identifier of the Type Standard")
    public Integer idTST;

    @Column(name = "typeStandard")
    @Description("The name of the Type Standard")
    public String typeStandard;

    @Column(name = "populatedBy")
    @Description("populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    @Description("lastTouch")
    public String lastTouch;
}