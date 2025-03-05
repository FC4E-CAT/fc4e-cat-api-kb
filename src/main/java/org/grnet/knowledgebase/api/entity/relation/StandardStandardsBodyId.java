package org.grnet.knowledgebase.api.entity.relation;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class StandardStandardsBodyId implements Serializable {

    @Column(name = "lod_STD")
    private String lod_STD;

    @Column(name = "lodSTB")
    private String lodSTB;

    public StandardStandardsBodyId() {}

    public StandardStandardsBodyId(String lod_STD, String lodSTB) {
        this.lod_STD = lod_STD;
        this.lodSTB = lodSTB;
    }

    public String getLod_STD() {
        return lod_STD;
    }

    public void setLod_STD(String lod_STD) {
        this.lod_STD = lod_STD;
    }

    public String getLodSTB() {
        return lodSTB;
    }

    public void setLodSTB(String lodSTB) {
        this.lodSTB = lodSTB;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        StandardStandardsBodyId that = (StandardStandardsBodyId) o;
        return Objects.equals(lod_STD, that.lod_STD) &&
                Objects.equals(lodSTB, that.lodSTB);
    }

    @Override
    public int hashCode() {
        return Objects.hash(lod_STD, lodSTB);
    }
}
