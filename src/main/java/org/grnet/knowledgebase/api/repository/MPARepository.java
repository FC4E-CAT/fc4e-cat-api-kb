package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.MPA;

import java.util.List;

@ApplicationScoped
public class MPARepository implements PanacheRepository<MPA> {
    public MPA findById(String lodMPA) {
        return find("lodMPA", lodMPA).firstResult();
    }
    public List<MPA> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }
}