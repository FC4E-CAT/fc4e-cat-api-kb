package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.Authority;
import org.grnet.knowledgebase.api.entity.Scheme;
import org.grnet.knowledgebase.api.entity.view.PropertiesStackCombined;

@ApplicationScoped
public class SchemeRepository implements PanacheRepository<Scheme> {
    public Scheme findById(String lodSCH) {
        return find("lodSCH", lodSCH).firstResult();
    }
}