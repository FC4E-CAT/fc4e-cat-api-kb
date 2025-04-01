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
@Subselect("SELECT * FROM k_Properties_Stack_Dynamic")
@Getter
@Setter
public class PropertiesStackDynamic {

    @Id
    @Column(name = "lod_IDN")
    @Description("The unique identifier of the Identifier")
    private String lodIDN;

    @Column(name = "lodRelation")
    @Description("The relation between the Identifier and Property")
    private String lodRelation;

    @Column(name = "labelProperty")
    @Description("The label of the Property")
    private String labelProperty;

    @Column(name = "Value_")
    @Description("The value")
    private String value;
}
