package org.grnet.knowledgebase.api.graphql;

import io.quarkus.panache.common.Page;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.Identifier;
import org.grnet.knowledgebase.api.entity.Manager;
import org.grnet.knowledgebase.api.entity.ManagerProvider;
import org.grnet.knowledgebase.api.entity.ManagerProviderId;

import java.util.List;
import java.util.Optional;

@GraphQLApi
public class ManagerProviderResource {

    @Query("allManagerProviders")
    @Description("Get All Manager Providers")
    public List<ManagerProvider> getAllManagerProviders() {
        return ManagerProvider.listAll();
    }

    @Query("managers")
    @Description("Get All Managers")
    public List<Manager> getAllManagers() {
        return Manager.listAll();
    }

    @Query("identifiers")
    @Description("Fetches a paginated list of identifiers")
    public List<Identifier> getPaginatedIdentifiers(@Description("Page number to fetch") int page,
                                                    @Description("Number of items per page") int size) {
        return Identifier
                .findAll()
                .page(Page.of(page, size))
                .list();
    }
}