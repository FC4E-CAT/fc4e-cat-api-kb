package org.grnet.knowledgebase.api.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import org.eclipse.microprofile.graphql.Description;

import java.io.Serializable;

@Entity
@Table(name = "k_StandardsBody")
public class StandardsBody implements Serializable {

    @Id
    @Column(name = "lodSTB", nullable = false)
    @Description("The unique identifier of the StandardsBody")
    public String lodSTB;

    @Column(name = "IDSTB")
    @Description("The identifier of the StandardsBody")
    public Integer IDSTB;

    @Column(name = "STB")
    @Description("The name of the StandardsBody")
    public String STB;

    @Column(name = "labelStandardsBody")
    @Description("The label of the StandardsBody")
    public String labelStandardsBody;

    @Column(name = "descStandardsBody", columnDefinition = "TEXT")
    @Description("The description of the StandardsBody")
    public String descStandardsBody;

    @Column(name = "lodSTB_V")
    @Description("The description of the StandardsBody")
    public String lodSTB_V;

    @Column(name = "populatedBy")
    @Description("populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    @Description("lastTouch")
    public String lastTouch;
}
