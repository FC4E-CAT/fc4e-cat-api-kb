package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.Authority;
import org.grnet.knowledgebase.api.entity.Standard;
import org.grnet.knowledgebase.api.entity.view.PropertiesStackCombined;

@ApplicationScoped
public class StandardRepository implements PanacheRepository<Standard> {
    public Standard findById(String lodSTD) {
        return find("lodSTD", lodSTD).firstResult();
    }
}