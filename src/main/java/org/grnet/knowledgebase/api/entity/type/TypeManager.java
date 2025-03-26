package org.grnet.knowledgebase.api.entity.type;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import org.eclipse.microprofile.graphql.Description;

@Entity
@Table(name = "k_Type_Manager")
public class TypeManager extends PanacheEntityBase {

    @Id
    @Column(name = "lodTMR", nullable = false)
    @Description("Unique identifier for the Type Manager")
    public String lodTMR;

    @Column(name = "IDTMR")
    @Description("The identifier of the Type Manager")
    public Integer idTMR;

    @Column(name = "typeManager")
    @Description("The label of the Type Manager")
    public String typeManager;

    @Column(name = "populatedBy")
    @Description("populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    @Description("lastTouch")
    public String lastTouch;
}
