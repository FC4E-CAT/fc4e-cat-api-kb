package org.grnet.knowledgebase.api.graphql.relation;

import jakarta.inject.Inject;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.relation.ManagerProvider;
import org.grnet.knowledgebase.api.repository.ManagerProviderRepository;

import java.util.List;

@GraphQLApi
public class ManagerProviderResource {

    @Inject
    ManagerProviderRepository repository;

    @Query("getAllManagerProviders")
    @Description("[relation] Fetches All Manager Providers")
    //@RolesAllowed({"admin"})
    public List<ManagerProvider> getAllManagerProviders() {
        return repository.listAll();
    }

    @Query("getAllManagerProvidersPaged")
    @Description("[relation] Fetches a paginated list of Manager Providers")
    public List<ManagerProvider> getPaginatedResolvedIdentifierAuthorities(
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
