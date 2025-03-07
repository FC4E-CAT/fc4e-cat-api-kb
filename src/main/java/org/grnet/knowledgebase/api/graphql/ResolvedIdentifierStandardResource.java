package org.grnet.knowledgebase.api.graphql;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierStandard;
import org.grnet.knowledgebase.api.repository.ResolvedIdentifierStandardRepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class ResolvedIdentifierStandardResource {

    @Inject
    ResolvedIdentifierStandardRepository repository;

    @Query("getResolvedIdentifierStandards")
    public List<ResolvedIdentifierStandard> getResolvedIdentifierStandards() {
        return repository.listAll();
    }

    @Query("getResolvedIdentifierStandardsByLabel")
    public List<ResolvedIdentifierStandard> getResolvedIdentifierStandardsByLabel(String label) {
        return repository.findByStandardLabel(label);
    }

    @Query("getResolvedIdentifierStandardsPaged")
    public List<ResolvedIdentifierStandard> getResolvedIdentifierStandardsPaged(
            @Description("Page number to fetch") int page,
            @Description("Number of items per page") int size){
        return repository.findByPage(page, size);
    }
}