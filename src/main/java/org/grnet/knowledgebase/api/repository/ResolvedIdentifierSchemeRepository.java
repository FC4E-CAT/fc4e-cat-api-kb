package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierScheme;

import java.util.List;

@ApplicationScoped
public class ResolvedIdentifierSchemeRepository implements PanacheRepository<ResolvedIdentifierScheme> {

    public List<ResolvedIdentifierScheme> findBySchemeLabel(String schemeLabel) {
        return find("label", schemeLabel).list();
    }

    public List<ResolvedIdentifierScheme> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }
}
