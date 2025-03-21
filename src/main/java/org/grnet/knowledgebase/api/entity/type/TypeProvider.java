package org.grnet.knowledgebase.api.entity.type;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import org.eclipse.microprofile.graphql.Description;

@Entity
@Table(name = "k_Type_Provider")
public class TypeProvider extends PanacheEntityBase {

    @Id
    @Column(name = "lodTPR", nullable = false)
    @Description("Unique identifier for the Type Provider")
    public String lodTPR;

    @Column(name = "IDTPR")
    @Description("The identifier of the Type Provider")
    public Integer IDTPR;

    @Column(name = "typeProvider")
    @Description("The label of the Type Provider")
    public String typeProvider;

    @Column(name = "TPR")
    @Description("The name of the Type Provider")
    public String TPR;

    @Column(name = "descTPR", columnDefinition = "TEXT")
    @Description("The description of the Type Provider")
    public String descTPR;

    @Column(name = "populatedBy")
    @Description("populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    @Description("lastTouch")
    public String lastTouch;
}
