package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.Scheme;

import java.util.List;

@ApplicationScoped
public class SchemeRepository implements PanacheRepository<Scheme> {
    public Scheme findById(String lodSCH) {
        return find("lodSCH", lodSCH).firstResult();
    }

    public List<Scheme> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }
}