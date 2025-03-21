package org.grnet.knowledgebase.api.graphql.realation;

import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.relation.ManagerProvider;

import java.util.List;

@GraphQLApi
public class ManagerProviderResource {

    @Query("getAllManagerProviders")
    @Description("[relation] Fetches All Manager Providers")
    //@RolesAllowed({"admin"})
    public List<ManagerProvider> getAllManagerProviders() {
        return ManagerProvider.listAll();
    }
}