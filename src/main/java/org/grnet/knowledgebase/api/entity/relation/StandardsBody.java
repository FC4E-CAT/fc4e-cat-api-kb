package org.grnet.knowledgebase.api.entity.relation;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.io.Serializable;
import java.time.ZonedDateTime;

@Entity
@Table(name = "k_StandardsBody")
public class StandardsBody implements Serializable {

    @Id
    @Column(name = "lodSTB", nullable = false)
    public String lodSTB;

    @Column(name = "IDSTB")
    public Integer IDSTB;

    @Column(name = "STB")
    public String STB;

    @Column(name = "labelStandardsBody")
    public String labelStandardsBody;

    @Column(name = "descStandardsBody", columnDefinition = "TEXT")
    public String descStandardsBody;

    @Column(name = "lodSTB_V")
    public String lodSTB_V;

    @Column(name = "populatedBy")
    public String populatedBy;

    @Column(name = "lastTouch")
    public String lastTouch;
}
