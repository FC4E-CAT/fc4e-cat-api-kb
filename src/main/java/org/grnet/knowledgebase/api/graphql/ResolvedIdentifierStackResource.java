package org.grnet.knowledgebase.api.graphql;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierStack;
import org.grnet.knowledgebase.api.repository.ResolvedIdentifierStackRepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class ResolvedIdentifierStackResource {

    @Inject
    ResolvedIdentifierStackRepository repository;

    @Query("getResolvedIdentifierStack")
    public List<ResolvedIdentifierStack> getResolvedIdentifierStack() {
        return repository.listAll();
    }

    @Query("getResolvedIdentifierStackByLabel")
    public List<ResolvedIdentifierStack> getResolvedIdentifierStackByLabel(String label) {
        return repository.findByStackLabel(label);
    }

    @Query("getResolvedIdentifierStackByActor")
    public List<ResolvedIdentifierStack> getResolvedIdentifierStackByActor(String actor) {
        return repository.findByActor(actor);
    }

    @Query("getResolvedIdentifierStackByLabelIdentifier")
    public List<ResolvedIdentifierStack> getResolvedIdentifierStackByLabelIdentifier(String labelIdentifier) {
        return repository.findByLabelIdentifier(labelIdentifier);
    }

    @Query("searchResolvedIdentifierStack")
    public List<ResolvedIdentifierStack> searchResolvedIdentifierStack(String search) {
        return repository.searchByKeyword(search);
    }

    @Query("getResolvedIdentifierStackPaged")
    public List<ResolvedIdentifierStack> getResolvedIdentifierStackPaged(
            @Description("Page number to fetch") int page,
            @Description("Number of items per page") int size){
        return repository.findByPage(page, size);
    }
}