package org.grnet.knowledgebase.api.graphql;

import jakarta.inject.Inject;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Name;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.Authority;
import org.grnet.knowledgebase.api.entity.Identifier;
import org.grnet.knowledgebase.api.repository.AuthorityRepository;
import org.grnet.knowledgebase.api.repository.IdentifierRepository;

import java.util.List;

@GraphQLApi
public class IdentifierResource {

    @Inject
    IdentifierRepository repository;

    @Query("getIdentifiers")
    @Description("Get All Identifiers")
    public List<Identifier> getIdentifiers() {
        return repository.listAll();
    }

    @Query("getIdentifierById")
    @Description("Fetches a paginated list of identifiers")
    public Identifier getIdentifierById(
            @Name("id")
            @Description("The id of the identifier") String id) {
        return repository.findById(id);
    }
}