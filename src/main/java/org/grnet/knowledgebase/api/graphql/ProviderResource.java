package org.grnet.knowledgebase.api.graphql;

import jakarta.inject.Inject;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Name;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.Authority;
import org.grnet.knowledgebase.api.entity.Provider;
import org.grnet.knowledgebase.api.repository.AuthorityRepository;
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
    @Description("Fetches a paginated list of providers")
    public Provider getProvidersById(
            @Name("id")
            @Description("The id of the provider") String id) {
        return repository.findById(id);
    }
}