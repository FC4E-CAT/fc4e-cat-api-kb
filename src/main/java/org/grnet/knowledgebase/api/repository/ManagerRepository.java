package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.Manager;

import java.util.List;

@ApplicationScoped
public class ManagerRepository implements PanacheRepository<Manager> {
    public Manager findById(String lodMAN) {
        return find("lodMAN", lodMAN).firstResult();
    }

    public List<Manager> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }
}