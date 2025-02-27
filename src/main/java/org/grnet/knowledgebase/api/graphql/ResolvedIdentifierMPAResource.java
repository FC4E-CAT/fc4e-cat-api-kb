package org.grnet.knowledgebase.api.graphql;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierProvider;
import org.grnet.knowledgebase.api.repository.ResolvedIdentifierProviderRepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class ResolvedIdentifierMPAResource {

    @Inject
    ResolvedIdentifierProviderRepository repository;

    @Query("getResolvedIdentifierProviders")
    public List<ResolvedIdentifierProvider> getResolvedIdentifierProviders() {
        return repository.listAll();
    }

    @Query("getResolvedIdentifierProvidersByLabel")
    public List<ResolvedIdentifierProvider> getResolvedIdentifierProvidersByLabel(String providerLabel) {
        return repository.find("labelProvider", providerLabel).list();
    }

    @Query("getResolvedIdentifierProvidersPaged")
    public List<ResolvedIdentifierProvider> getResolvedIdentifierProvidersPaged(
            @Description("Page number to fetch") int page,
            @Description("Number of items per page") int size) {
        return repository.findByPage(page, size);
    }
}
