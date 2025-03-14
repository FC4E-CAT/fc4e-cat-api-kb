package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.Authority;
import org.grnet.knowledgebase.api.entity.Manager;
import org.grnet.knowledgebase.api.entity.view.PropertiesStackCombined;

@ApplicationScoped
public class ManagerRepository implements PanacheRepository<Manager> {
    public Manager findById(String lodMAN) {
        return find("lodMAN", lodMAN).firstResult();
    }
}