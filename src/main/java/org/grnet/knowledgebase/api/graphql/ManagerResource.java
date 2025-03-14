package org.grnet.knowledgebase.api.graphql;

import jakarta.inject.Inject;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Name;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.Authority;
import org.grnet.knowledgebase.api.entity.Manager;
import org.grnet.knowledgebase.api.repository.AuthorityRepository;
import org.grnet.knowledgebase.api.repository.ManagerRepository;

import java.util.List;

@GraphQLApi
public class ManagerResource {

    @Inject
    ManagerRepository repository;

    @Query("getManagers")
    @Description("Get All Managers")
    public List<Manager> getAuthorities() {
        return repository.listAll();
    }

    @Query("getManagerById")
    @Description("Fetches a paginated list of managers")
    public Manager getManagerById(
            @Name("id")
            @Description("The id of the manager") String id) {
        return repository.findById(id);
    }
}