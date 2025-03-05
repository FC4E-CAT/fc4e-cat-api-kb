package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierProvider;

import java.util.List;

@ApplicationScoped
public class ResolvedIdentifierProviderRepository implements PanacheRepository<ResolvedIdentifierProvider> {

    /**
     * 🔍 Finds providers by their label.
     *
     * @param provider The label of the provider (e.g., "DataCite").
     * @return A list of resolved identifier providers matching the label.
     */
    public List<ResolvedIdentifierProvider> findByProvider(String provider) {
        return find("labelProvider", provider).list();
    }

    /**
     * 📄 Retrieves a paginated list of resolved identifier providers.
     *
     * @param page The page number (starting from 0).
     * @param size The number of records per page.
     * @return A paginated list of resolved identifier providers.
     */
    public List<ResolvedIdentifierProvider> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }
}
