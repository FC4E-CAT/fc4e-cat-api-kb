package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.Authority;
import org.grnet.knowledgebase.api.entity.Identifier;
import org.grnet.knowledgebase.api.entity.view.PropertiesStackCombined;

@ApplicationScoped
public class IdentifierRepository implements PanacheRepository<Identifier> {
    public Identifier findById(String lodIDN) {
        return find("lodIDN", lodIDN).firstResult();
    }
}