package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.StandardsBody;

import java.util.List;

@ApplicationScoped
public class StandardsBodyRepository implements PanacheRepository<StandardsBody> {
    public StandardsBody findById(String lodSTD) {
        return find("lodSTB", lodSTD).firstResult();
    }

    public List<StandardsBody> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }
}