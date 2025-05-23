package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.Authority;

import java.util.List;

@ApplicationScoped
public class AuthorityRepository implements PanacheRepository<Authority> {

    public Authority findById(String lodAUT) {
        return find("lodAUT", lodAUT).firstResult();
    }
    public List<Authority> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }
}