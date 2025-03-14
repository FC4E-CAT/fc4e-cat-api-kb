package org.grnet.knowledgebase.api.graphql;

import jakarta.inject.Inject;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Name;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.Authority;
import org.grnet.knowledgebase.api.entity.Scheme;
import org.grnet.knowledgebase.api.repository.AuthorityRepository;
import org.grnet.knowledgebase.api.repository.SchemeRepository;

import java.util.List;

@GraphQLApi
public class SchemeResource {

    @Inject
    SchemeRepository repository;

    @Query("getSchemes")
    @Description("Get All Schemes")
    public List<Scheme> getSchemes() {
        return repository.listAll();
    }

    @Query("getSchemeById")
    @Description("Fetches a paginated list of schemes")
    public Scheme getSchemeById(
            @Name("id")
            @Description("The id of the scheme") String id) {
        return repository.findById(id);
    }
}