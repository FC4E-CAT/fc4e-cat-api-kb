package org.grnet.knowledgebase.api.graphql;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierProvider;
import org.grnet.knowledgebase.api.repository.ResolvedIdentifierProviderRepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class ResolvedIdentifierProviderResource {

    @Inject
    ResolvedIdentifierProviderRepository repository;

    @Query("getResolvedIdentifierProviders")
    @Description("Fetch all resolved identifier provider")
    public List<ResolvedIdentifierProvider> getResolvedIdentifierProviders() {
        return repository.listAll();
    }

    @Query("getResolvedIdentifierProvidersByLabel")
    @Description("Fetches a list of resolved identifier providers by label")
    public List<ResolvedIdentifierProvider> getResolvedIdentifierProvidersByLabel(
            @Name("label")
            @DefaultValue("arXiv.org")
            @Description("The label of the provider") String labelProvider) {
        return repository.find("labelProvider", labelProvider).list();
    }

    @Query("getResolvedIdentifierProvidersPaged")
    @Description("Fetches a paginated list of resolved identifier providers")
    public List<ResolvedIdentifierProvider> getPaginatedResolvedIdentifierProviders(
            @Name("page")
            @DefaultValue("1")
            @Description("Indicates the page number. Page number must be >= 1.")
            @Min(value = 1, message = "Page number must be >= 1.") int page,
            @Name("size")
            @DefaultValue("10")
            @Description("Page size must be between 1 and 100.")
            @Min(value = 1, message = "Page size must be between 1 and 100.")
            @Max(value = 100, message = "Page size must be between 1 and 100.") int size) {
        return repository.findByPage(page - 1, size);
    }
}
