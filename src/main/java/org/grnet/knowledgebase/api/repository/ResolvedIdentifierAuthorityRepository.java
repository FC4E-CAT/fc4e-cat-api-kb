package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierAuthority;

import java.util.List;

@ApplicationScoped
public class ResolvedIdentifierAuthorityRepository implements PanacheRepository<ResolvedIdentifierAuthority> {

    public List<ResolvedIdentifierAuthority> findByAuthorityLabel(String authorityLabel) {
        return find("label", authorityLabel).list();
    }

    public List<ResolvedIdentifierAuthority> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }
}