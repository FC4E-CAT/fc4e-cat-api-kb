package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierStack;

import java.util.List;

@ApplicationScoped
public class ResolvedIdentifierStackRepository implements PanacheRepository<ResolvedIdentifierStack> {

    public List<ResolvedIdentifierStack> findByStackLabel(String stackLabel) {
        return find("label", stackLabel).list();
    }

    public List<ResolvedIdentifierStack> findByActor(String actor) {
        return find("actor", actor).list();
    }

    public List<ResolvedIdentifierStack> findByLabelIdentifier(String labelIdentifier) {
        return find("labelIdentifier", labelIdentifier).list();
    }

    public List<ResolvedIdentifierStack> searchByKeyword(String search) {
        return find("actor ilike ?1 OR labelIdentifier ilike ?1 OR label ilike ?1", "%" + search + "%").list();
    }

    public List<ResolvedIdentifierStack> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }
}
