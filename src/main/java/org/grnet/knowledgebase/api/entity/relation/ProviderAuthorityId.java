package org.grnet.knowledgebase.api.entity.relation;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class ProviderAuthorityId implements Serializable {

    @Column(name = "lod_PRV")
    private String lod_PRV;

    @Column(name = "lodAUT")
    private String lodAUT;

    public ProviderAuthorityId() {}

    public ProviderAuthorityId(String lod_PRV, String lodAUT) {
        this.lod_PRV = lod_PRV;
        this.lodAUT = lodAUT;
    }

    public String getLod_PRV() {
        return lod_PRV;
    }

    public void setLod_PRV(String lod_PRV) {
        this.lod_PRV = lod_PRV;
    }

    public String getLodAUT() {
        return lodAUT;
    }

    public void setLodAUT(String lodAUT) {
        this.lodAUT = lodAUT;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ProviderAuthorityId that = (ProviderAuthorityId) o;
        return Objects.equals(lod_PRV, that.lod_PRV) &&
               Objects.equals(lodAUT, that.lodAUT);
    }

    @Override
    public int hashCode() {
        return Objects.hash(lod_PRV, lodAUT);
    }
}
