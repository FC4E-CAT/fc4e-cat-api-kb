package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierMPA;

import java.util.List;

@ApplicationScoped
public class ResolvedIdentifierMPARepository implements PanacheRepository<ResolvedIdentifierMPA> {

    /**
     * 🔍 Find identifiers by MPA label.
     *
     * @param labelIdentifier The name of the MPA (e.g., "RAID Australia").
     * @return A list of resolved identifiers linked to this MPA.
     */
    public List<ResolvedIdentifierMPA> findByLabel(String labelIdentifier) {
        return find("labelIdentifier", labelIdentifier).list();
    }

    /**
     * 📄 Retrieve a paginated list of resolved identifiers.
     *
     * @param page The page number (starting from 0).
     * @param size The number of records per page.
     * @return A paginated list of resolved identifiers.
     */
    public List<ResolvedIdentifierMPA> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }
}
