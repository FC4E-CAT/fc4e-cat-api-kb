package org.grnet.knowledgebase.api.graphql;

import io.quarkus.panache.common.Page;
import jakarta.annotation.security.RolesAllowed;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.Identifier;
import org.grnet.knowledgebase.api.entity.Manager;
import org.grnet.knowledgebase.api.entity.relation.ManagerProvider;

import java.util.List;

@GraphQLApi
public class ManagerProviderResource {

    @Query("allManagerProviders")
    @Description("Get All Manager Providers")
    @RolesAllowed({"admin"})
    public List<ManagerProvider> getAllManagerProviders() {
        return ManagerProvider.listAll();
    }

    @Query("managers")
    @Description("Get All Managers")
    @RolesAllowed({"user"})
    public List<Manager> getAllManagers() {
        return Manager.listAll();
    }

    @Query("identifiers")
    @Description("Fetches a paginated list of identifiers")
    public List<Identifier> getPaginatedIdentifiers(
            @Name("page")
            @Description("Page number to fetch")
            @DefaultValue("1")
            int page,
            @Name("size")
            @Description("Number of items per page")
            @DefaultValue("10")
            int size) {
        return Identifier
                .findAll()
                .page(Page.of(page, size))
                .list();
    }
}