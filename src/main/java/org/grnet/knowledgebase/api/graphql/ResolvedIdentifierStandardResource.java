package org.grnet.knowledgebase.api.graphql;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierStandard;
import org.grnet.knowledgebase.api.repository.ResolvedIdentifierStandardRepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class ResolvedIdentifierStandardResource {

    @Inject
    ResolvedIdentifierStandardRepository repository;

    @Query("getResolvedIdentifierStandards")
    @Description("Fetches resolved identifier standard ")
    public List<ResolvedIdentifierStandard> getResolvedIdentifierStandards() {
        return repository.listAll();
    }

    @Query("getResolvedIdentifierStandardsByLabel")
    @Description("Fetches resolved identifier standard from the database by label.")
    public List<ResolvedIdentifierStandard> getResolvedIdentifierStandardsByLabel(
            @Name("label")
            @Description("The label of the actor: Standard")
            String label) {
        return repository.findByStandardLabel(label);
    }

    @Query("getResolvedIdentifierStandardsPaged")
    @Description("Fetches a paginated list of resolved identifier standard")
    public List<ResolvedIdentifierStandard> getResolvedIdentifierStandardsPaged(
            @Name("Page")
            @DefaultValue("1")
            @Description("Indicates the page number. Page number must be >= 1.") int page,
            @Name("Size")
            @DefaultValue("10")
            @Description("Page size must be between 1 and 100.") int size){
        return repository.findByPage(page, size);
    }
}