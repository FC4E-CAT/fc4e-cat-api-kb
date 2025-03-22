package org.grnet.knowledgebase.api.graphql.entity;

import jakarta.inject.Inject;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.Identifier;
import org.grnet.knowledgebase.api.repository.IdentifierRepository;

import java.util.List;

@GraphQLApi
public class IdentifierResource {

    @Inject
    IdentifierRepository repository;

    @Query("getIdentifiers")
    @Description("[entity] Fetches All Identifiers")
    public List<Identifier> getIdentifiers() {
        return repository.listAll();
    }

    @Query("getIdentifierById")
    @Description("[entity] Fetches an Identifier by Id")
    public Identifier getIdentifierById(
            @Name("id")
            @DefaultValue("pid_graph:03A715EA1")
            @Description("The id of the identifier") String id) {
        return repository.findById(id);
    }

    @Query("getIdentifiersByPage")
    @Description("[entity] Fetches a paginated list of identifiers")
    public List<Identifier> getPaginatedIdentifiers(
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