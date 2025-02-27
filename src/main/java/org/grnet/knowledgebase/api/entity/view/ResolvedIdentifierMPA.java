package org.grnet.knowledgebase.api.entity.view;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
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
    private String lodIdn;

    @Column(name = "labelIdentifier")
    private String labelIdentifier;

    @Column(name = "lodact")
    private String lodAct;

    @Column(name = "actor")
    private String actor;

    @Column(name = "lodMPA")
    private String lodMPA;

    @Column(name = "labelMPA")
    private String labelMPA;
}
