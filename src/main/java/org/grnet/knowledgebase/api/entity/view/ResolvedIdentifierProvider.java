package org.grnet.knowledgebase.api.entity.view;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
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
    private String lodIdn;

    @Column(name = "labelIdentifier")
    private String labelIdentifier;

    @Column(name = "lodact")
    private String lodAct;

    @Column(name = "actor")
    private String actor;

    @Column(name = "lodPRV")
    private String lodPrv;

    @Column(name = "labelProvider")
    private String labelProvider;
}
