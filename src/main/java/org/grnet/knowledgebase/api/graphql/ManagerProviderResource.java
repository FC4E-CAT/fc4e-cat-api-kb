package org.grnet.knowledgebase.api.graphql;

import jakarta.annotation.security.RolesAllowed;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.Manager;
import org.grnet.knowledgebase.api.entity.relation.ManagerProvider;

import java.util.List;

@GraphQLApi
public class ManagerProviderResource {

    @Query("allManagerProviders")
    @Description("Fetches All Manager Providers")
    @RolesAllowed({"admin"})
    public List<ManagerProvider> getAllManagerProviders() {
        return ManagerProvider.listAll();
    }

    @Query("managers")
    @Description("Fetches All Managers")
    @RolesAllowed({"user"})
    public List<Manager> getAllManagers() {
        return Manager.listAll();
    }
}