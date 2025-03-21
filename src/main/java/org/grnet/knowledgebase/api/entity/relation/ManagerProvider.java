package org.grnet.knowledgebase.api.entity.relation;


import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import org.eclipse.microprofile.graphql.Description;
import org.grnet.knowledgebase.api.entity.Identifier;
import org.grnet.knowledgebase.api.entity.Manager;
import org.grnet.knowledgebase.api.entity.Provider;

@Entity
@Table(name = "k_Manager_Provider")
public class ManagerProvider extends PanacheEntityBase {

    @EmbeddedId
    public ManagerProviderId id;

    @ManyToOne
    @JoinColumn(name = "lodMAN", referencedColumnName = "lodMAN", insertable = false, updatable = false)
    @Description("The Manager")
    public Manager manager;

    @ManyToOne
    @JoinColumn(name = "lod_PRV", referencedColumnName = "lodPRV", insertable = false, updatable = false)
    @Description("The Provider")
    public Provider provider;

    @ManyToOne
    @JoinColumn(name = "lod_IDN", referencedColumnName = "lodIDN", insertable = false, updatable = false)
    @Description("The Identifier")
    public Identifier identifier;

    @Column(name = "lodRelation")
    @Description("The relation between Manager, Provider and Identifier")
    public String lodRelation;

    @Column(name = "populatedBy")
    @Description("populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    @Description("lastTouch")
    public String lastTouch;
}
