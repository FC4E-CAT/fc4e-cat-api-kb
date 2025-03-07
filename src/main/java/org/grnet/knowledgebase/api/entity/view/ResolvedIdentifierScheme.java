package org.grnet.knowledgebase.api.entity.view;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;
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
    private String lodIDN;

    @Column(name = "labelIdentifier")
    private String labelIdentifier;

    @Column(name = "lodact")
    private String lodAct;

    @Column(name = "actor")
    private String actor;

    @Column(name = "lod")
    private String lod;

    @Column(name = "label")
    private String label;
}