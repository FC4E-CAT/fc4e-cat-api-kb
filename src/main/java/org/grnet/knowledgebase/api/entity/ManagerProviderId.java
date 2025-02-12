package org.grnet.knowledgebase.api.entity;

import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

@Embeddable
public class ManagerProviderId implements Serializable {

    @Column(name = "lodMAN")
    private String lodMAN;

    @Column(name = "lod_PRV")
    private String lodPRV;

    @Column(name = "lod_IDN")
    private String lodIDN;

    public ManagerProviderId() {}

    public ManagerProviderId(String lodMAN, String lodPRV, String lodIDN) {
        this.lodMAN = lodMAN;
        this.lodPRV = lodPRV;
        this.lodIDN = lodIDN;
    }

    public String getLodMAN() {
        return lodMAN;
    }

    public void setLodMAN(String lodMAN) {
        this.lodMAN = lodMAN;
    }

    public String getLodPRV() {
        return lodPRV;
    }

    public void setLodPRV(String lodPRV) {
        this.lodPRV = lodPRV;
    }

    public String getLodIDN() {
        return lodIDN;
    }

    public void setLodIDN(String lodIDN) {
        this.lodIDN = lodIDN;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ManagerProviderId that = (ManagerProviderId) o;
        return Objects.equals(lodMAN, that.lodMAN) &&
               Objects.equals(lodPRV, that.lodPRV) &&
               Objects.equals(lodIDN, that.lodIDN);
    }

    @Override
    public int hashCode() {
        return Objects.hash(lodMAN, lodPRV, lodIDN);
    }
}
