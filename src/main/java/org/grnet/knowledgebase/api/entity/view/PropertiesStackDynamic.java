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
@Subselect("SELECT * FROM k_Properties_Stack_Dynamic")
@Getter
@Setter
public class PropertiesStackDynamic {

    @Id
    @Column(name = "lod_IDN")
    private String lodIDN;

    @Column(name = "lodRelation")
    private String lodRelation;

    @Column(name = "labelProperty")
    private String labelProperty;

    @Column(name = "Value_")
    private String value;
}
