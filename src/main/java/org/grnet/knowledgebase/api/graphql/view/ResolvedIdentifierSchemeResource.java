package org.grnet.knowledgebase.api.graphql.view;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierScheme;
import org.grnet.knowledgebase.api.repository.ResolvedIdentifierSchemeRepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class ResolvedIdentifierSchemeResource {

    @Inject
    ResolvedIdentifierSchemeRepository repository;

    @Query("getResolvedIdentifierSchemes")
    @Description("[view] Fetch all resolved identifier schemes")
    public List<ResolvedIdentifierScheme> getResolvedIdentifierSchemes() {
        return repository.listAll();
    }

    @Query("getResolvedIdentifierSchemesByLabel")
    @Description("[view] Fetches a list of resolved identifier scheme by label")
    public List<ResolvedIdentifierScheme> getResolvedIdentifierSchemesByLabel(
            @Name("label")
            @DefaultValue("URN:NBN")
            @Description("The label of the Scheme") String label) {
        return repository.findBySchemeLabel(label);
    }

    @Query("getResolvedIdentifierSchemesPaged")
    @Description("[view] Fetches a paginated list of resolved identifier schemes")
    public List<ResolvedIdentifierScheme> getPaginatedResolvedIdentifierSchemes(
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