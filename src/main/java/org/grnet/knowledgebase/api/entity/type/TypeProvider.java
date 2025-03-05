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
    @Description("Unique identifier for the entry")
    public String lodTPR;

    @Column(name = "IDTPR")
    @Description("The identifier code")
    public Integer IDTPR;

    @Column(name = "typeProvider")
    @Description("The type code")
    public String typeProvider;

    @Column(name = "TPR")
    public String TPR;

    @Column(name = "descTPR", columnDefinition = "TEXT")
    public String descTPR;

    @Column(name = "populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    public String lastTouch;
}
