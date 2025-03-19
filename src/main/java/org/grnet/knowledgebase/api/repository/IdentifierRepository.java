package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.Identifier;

import java.util.List;

@ApplicationScoped
public class IdentifierRepository implements PanacheRepository<Identifier> {
    public Identifier findById(String lodIDN) {
        return find("lodIDN", lodIDN).firstResult();
    }

    public List<Identifier> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }
}