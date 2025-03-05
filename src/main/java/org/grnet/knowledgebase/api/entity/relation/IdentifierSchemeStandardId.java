package org.grnet.knowledgebase.api.entity.relation;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class IdentifierSchemeStandardId implements Serializable {

    @Column(name = "lodIDN")
    private String lodIDN;

    @Column(name = "lodSCH")
    private String lodSCH;

    @Column(name = "lodSTD")
    private String lodSTD;

    public IdentifierSchemeStandardId() {}

    public IdentifierSchemeStandardId(String lodIDN, String lodSCH, String lodSTD) {
        this.lodIDN = lodIDN;
        this.lodSCH = lodSCH;
        this.lodSTD = lodSTD;
    }

    public String getLodIDN() {
        return lodIDN;
    }

    public void setLodIDN(String lodIDN) {
        this.lodIDN = lodIDN;
    }

    public String getLodSCH() {
        return lodSCH;
    }

    public void setLodSCH(String lodSCH) {
        this.lodSCH = lodSCH;
    }

    public String getLodSTD() {
        return lodSTD;
    }

    public void setLodSTD(String lodSTD) {
        this.lodSTD = lodSTD;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        IdentifierSchemeStandardId that = (IdentifierSchemeStandardId) o;
        return Objects.equals(lodIDN, that.lodIDN) &&
                Objects.equals(lodSCH, that.lodSCH) &&
                Objects.equals(lodSTD, that.lodSTD);
    }

    @Override
    public int hashCode() {
        return Objects.hash(lodIDN, lodSCH, lodSTD);
    }
}
