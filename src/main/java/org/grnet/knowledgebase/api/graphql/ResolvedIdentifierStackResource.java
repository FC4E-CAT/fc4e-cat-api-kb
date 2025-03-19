package org.grnet.knowledgebase.api.graphql;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierStack;
import org.grnet.knowledgebase.api.repository.ResolvedIdentifierStackRepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class ResolvedIdentifierStackResource {

    @Inject
    ResolvedIdentifierStackRepository repository;

    @Query("getResolvedIdentifierStack")
    @Description("Fetches resolved identifier stack ")
    public List<ResolvedIdentifierStack> getResolvedIdentifierStack() {
        return repository.listAll();
    }

    @Query("getResolvedIdentifierStackById")
    @Description("Fetches a Resolved Identifier Stack by Id")
    public ResolvedIdentifierStack getResolvedIdentifierStackById(
            @Name("id")
            @DefaultValue("pid_graph:998B7874")
            @Description("The id of the Identifier") String id) {
        return repository.findById(id);
    }

    @Query("getResolvedIdentifierStackByLabel")
    @Description("Fetches a list of resolved identifier stacks by Label")
    public List<ResolvedIdentifierStack> getResolvedIdentifierStackByLabel(
            @Name("label")
            @DefaultValue("DONA")
            @Description("The label of the identifier") String label) {
        return repository.findByStackLabel(label);
    }

    @Query("getResolvedIdentifierStackByActor")
    @Description("Fetches a list of resolved identifier stacks by Actor")
    public List<ResolvedIdentifierStack> getResolvedIdentifierStackByActor(
            @Name("actor")
            @DefaultValue("Authority")
            @Description("The name of the actor") String actorName) {
        return repository.findByActor(actorName);
    }

    @Query("getResolvedIdentifierStackByLabelIdentifier")
    @Description("Fetches a list of resolved identifier stacks by Identifiers Label")
    public List<ResolvedIdentifierStack> getResolvedIdentifierStackByLabelIdentifier(
            @Name("label")
            @DefaultValue("DOI")
            @Description("The label of the Identifier") String labelIdentifier) {
        return repository.findByLabelIdentifier(labelIdentifier);
    }

    @Query("searchResolvedIdentifierStack")
    @Description("Fetches a list of resolved identifier stacks by search")
    public List<ResolvedIdentifierStack> searchResolvedIdentifierStack(
            @Name("search")
            @DefaultValue("MPA")
            @Description("Search by actor, labelIdentifier, label") String search) {
        return repository.searchByKeyword(search);
    }

    @Query("getResolvedIdentifierStackPaged")
    @Description("Fetches a paginated list of resolved identifier Stack")
    public List<ResolvedIdentifierStack> getPaginatedResolvedIdentifierStack(
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