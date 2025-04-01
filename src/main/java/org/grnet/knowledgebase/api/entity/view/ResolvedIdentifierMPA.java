package org.grnet.knowledgebase.api.entity.view;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.eclipse.microprofile.graphql.Description;
import org.hibernate.annotations.Immutable;
import org.hibernate.annotations.Subselect;

@Entity
@Immutable
@Subselect("SELECT * FROM k_Resolved_Identifier_MPA")
@Getter
@Setter
public class ResolvedIdentifierMPA {

    @Id
    @Column(name = "lodIDN")
    @Description("The unique identifier of the Identifier")
    private String lodIdn;

    @Column(name = "labelIdentifier")
    @Description("The label for the Identifier")
    private String labelIdentifier;

    @Column(name = "lodact")
    @Description("The actor that  is to be registered")
    private String lodAct;

    @Column(name = "actor")
    @Description("The name of the Actor")
    private String actor;

    @Column(name = "lodMPA")
    private String lodMPA;

    @Column(name = "labelMPA")
    private String labelMPA;
}
