package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierStandard;

import java.util.List;

@ApplicationScoped
public class ResolvedIdentifierStandardRepository implements PanacheRepository<ResolvedIdentifierStandard> {

    public List<ResolvedIdentifierStandard> findByStandardLabel(String standardLabel) {
        return find("label", standardLabel).list();
    }

    public List<ResolvedIdentifierStandard> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }
}
