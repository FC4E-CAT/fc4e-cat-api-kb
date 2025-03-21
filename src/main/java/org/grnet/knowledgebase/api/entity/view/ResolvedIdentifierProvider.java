package org.grnet.knowledgebase.api.entity.view;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.eclipse.microprofile.graphql.Description;
import org.hibernate.annotations.Immutable;
import org.hibernate.annotations.Subselect;

@Entity
@Immutable
@Subselect("SELECT * FROM k_Resolved_Identifier_Provider")
@Getter
@Setter
public class ResolvedIdentifierProvider {

    @Id
    @Column(name = "lodIDN")
    @Description("The unique identifier of the Identifier")
    private String lodIdn;

    @Column(name = "labelIdentifier")
    @Description("The label for the Identifier")
    private String labelIdentifier;

    @Column(name = "lodact")
    @Description("The unique identifier of the actor")
    private String lodAct;

    @Column(name = "actor")
    @Description("The name of the actor")
    private String actor;

    @Column(name = "lodPRV")
    @Description("The unique identifier of the Provider")
    private String lodPrv;

    @Column(name = "labelProvider")
    @Description("The label of the Provider")
    private String labelProvider;
}
