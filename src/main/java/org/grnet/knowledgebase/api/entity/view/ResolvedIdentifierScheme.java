package org.grnet.knowledgebase.api.entity.view;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;
import org.eclipse.microprofile.graphql.Description;
import org.hibernate.annotations.Immutable;
import org.hibernate.annotations.Subselect;

@Entity
@Immutable
@Subselect("SELECT * FROM k_Resolved_Identifier_Scheme")
@Getter
@Setter
public class ResolvedIdentifierScheme {

    @Id
    @Column(name = "lodIDN")
    @Description("The unique identifier of the Identifier")
    private String lodIDN;

    @Column(name = "labelIdentifier")
    @Description("The label for the Identifier")
    private String labelIdentifier;

    @Column(name = "lodact")
    @Description("The unique identifier of the actor")
    private String lodAct;

    @Column(name = "actor")
    @Description("The name of the Actor")
    private String actor;

    @Column(name = "lod")
    @Description("The unique identifier of the Scheme")
    private String lod;

    @Column(name = "label")
    @Description("The label of the Scheme")
    private String label;
}