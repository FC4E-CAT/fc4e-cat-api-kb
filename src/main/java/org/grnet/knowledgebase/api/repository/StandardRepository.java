package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.Standard;

import java.util.List;

@ApplicationScoped
public class StandardRepository implements PanacheRepository<Standard> {
    public Standard findById(String lodSTD) {
        return find("lodSTD", lodSTD).firstResult();
    }

    public List<Standard> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }
}