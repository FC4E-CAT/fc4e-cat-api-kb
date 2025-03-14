package org.grnet.knowledgebase.api.graphql;

import jakarta.inject.Inject;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Name;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.Authority;
import org.grnet.knowledgebase.api.entity.Standard;
import org.grnet.knowledgebase.api.repository.AuthorityRepository;
import org.grnet.knowledgebase.api.repository.StandardRepository;

import java.util.List;

@GraphQLApi
public class StandardResource {

    @Inject
    StandardRepository repository;

    @Query("getStandards")
    @Description("Get All Standards")
    public List<Standard> getStandards() {
        return repository.listAll();
    }

    @Query("getStandardById")
    @Description("Fetches a paginated list of identifiers")
    public Standard getStandardById(
            @Name("id")
            @Description("The id of the standard") String id) {
        return repository.findById(id);
    }
}