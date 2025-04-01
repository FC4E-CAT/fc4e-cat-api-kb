package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.Provider;

import java.util.List;

@ApplicationScoped
public class ProviderRepository implements PanacheRepository<Provider> {
    public Provider findById(String lodPRV) {
        return find("lodPRV", lodPRV).firstResult();
    }

    public List<Provider> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }

}