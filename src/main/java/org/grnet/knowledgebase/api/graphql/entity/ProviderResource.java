package org.grnet.knowledgebase.api.graphql.entity;

import jakarta.inject.Inject;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.Provider;
import org.grnet.knowledgebase.api.repository.ProviderRepository;

import java.util.List;

@GraphQLApi
public class ProviderResource {

    @Inject
    ProviderRepository repository;

    @Query("getProviders")
    @Description("Get All Providers")
    public List<Provider> getProviders() {
        return repository.listAll();
    }

    @Query("getProviderById")
    @Description("[entity] Fetches a Provider by Id")
    public Provider getProvidersById(
            @Name("id")
            @DefaultValue("pid_graph:3C391CE0")
            @Description("The id of the provider") String id) {
        return repository.findById(id);
    }

    @Query("getProvidersByPage")
    @Description("[entity] Fetches a paginated list of identifiers")
    public List<Provider> getPaginatedProviders(
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