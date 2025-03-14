package org.grnet.knowledgebase.api.graphql;

import jakarta.annotation.security.RolesAllowed;
import jakarta.inject.Inject;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Name;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.Authority;
import org.grnet.knowledgebase.api.entity.relation.ManagerProvider;
import org.grnet.knowledgebase.api.repository.AuthorityRepository;

import java.util.List;

@GraphQLApi
public class AuthorityResource {

    @Inject
    AuthorityRepository repository;

    @Query("getAuthorities")
    @Description("Get All Authorities")
    public List<Authority> getAuthorities() {
        return repository.listAll();
    }

    @Query("getAuthorityById")
    @Description("Fetches a paginated list of identifiers")
    public Authority getAuthorityById(
            @Name("id")
            @Description("The id of the authority") String id) {
        return repository.findById(id);
    }
}