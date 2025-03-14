package org.grnet.knowledgebase.api.graphql;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
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
    @Description("Fetch all resolved identifier schemes")
    public List<ResolvedIdentifierScheme> getResolvedIdentifierSchemes() {
        return repository.listAll();
    }

    @Query("getResolvedIdentifierSchemesByLabel")
    @Description("Fetches a list of resolved identifier scheme by label")
    public List<ResolvedIdentifierScheme> getResolvedIdentifierSchemesByLabel(
            @Name("label")
            @Description("The label of the actor: Scheme")
            String label) {
        return repository.findBySchemeLabel(label);
    }

    @Query("getResolvedIdentifierSchemesPaged")
    @Description("Fetches a paginated list of resolved identifier schemes")
    public List<ResolvedIdentifierScheme> getResolvedIdentifierSchemesPaged(
            @Name("Page")
            @DefaultValue("1")
            @Description("Indicates the page number. Page number must be >= 1.") int page,
            @Name("Size")
            @DefaultValue("10")
            @Description("Page size must be between 1 and 100.") int size){
        return repository.findByPage(page, size);
    }
}