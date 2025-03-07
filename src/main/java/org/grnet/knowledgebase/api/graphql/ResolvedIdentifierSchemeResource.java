package org.grnet.knowledgebase.api.graphql;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierScheme;
import org.grnet.knowledgebase.api.repository.ResolvedIdentifierSchemeRepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class ResolvedIdentifierSchemeResource {

    @Inject
    ResolvedIdentifierSchemeRepository repository;

    @Query("getResolvedIdentifierSchemes")
    public List<ResolvedIdentifierScheme> getResolvedIdentifierSchemes() {
        return repository.listAll();
    }

    @Query("getResolvedIdentifierSchemesByLabel")
    public List<ResolvedIdentifierScheme> getResolvedIdentifierSchemesByLabel(String label) {
        return repository.findBySchemeLabel(label);
    }

    @Query("getResolvedIdentifierSchemesPaged")
    public List<ResolvedIdentifierScheme> getResolvedIdentifierSchemesPaged(
            @Description("Page number to fetch") int page,
            @Description("Number of items per page") int size){
        return repository.findByPage(page, size);
    }
}