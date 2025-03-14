package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.Authority;
import org.grnet.knowledgebase.api.entity.Provider;
import org.grnet.knowledgebase.api.entity.view.PropertiesStackCombined;

@ApplicationScoped
public class ProviderRepository implements PanacheRepository<Provider> {
    public Provider findById(String lodPRV) {
        return find("lodPRV", lodPRV).firstResult();
    }
}