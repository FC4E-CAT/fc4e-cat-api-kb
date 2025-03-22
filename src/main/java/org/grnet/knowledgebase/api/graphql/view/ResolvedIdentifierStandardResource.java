package org.grnet.knowledgebase.api.graphql.view;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
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
    @Description("[view] Fetches resolved identifier standard ")
    public List<ResolvedIdentifierStandard> getResolvedIdentifierStandards() {
        return repository.listAll();
    }

    @Query("getResolvedIdentifierStandardsByLabel")
    @Description("[view] Fetches resolved identifier standard from the database by label.")
    public List<ResolvedIdentifierStandard> getResolvedIdentifierStandardsByLabel(
            @Name("label")
            @DefaultValue("Bibcode Published Schema")
            @Description("The label of the Standard") String label) {
        return repository.findByStandardLabel(label);
    }

    @Query("getResolvedIdentifierStandardsPaged")
    @Description("[view] Fetches a paginated list of resolved identifier standard")
    public List<ResolvedIdentifierStandard> getPaginatedResolvedIdentifierStandards(
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