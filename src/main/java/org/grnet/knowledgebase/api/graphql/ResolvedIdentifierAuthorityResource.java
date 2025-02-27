package org.grnet.knowledgebase.api.graphql;

import jakarta.inject.Inject;
import jakarta.enterprise.context.ApplicationScoped;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierAuthority;
import org.grnet.knowledgebase.api.repository.ResolvedIdentifierAuthorityRepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class ResolvedIdentifierAuthorityResource {

    @Inject
    ResolvedIdentifierAuthorityRepository repository;

    @Query("getResolvedIdentifierAuthorities")
    public List<ResolvedIdentifierAuthority> getResolvedIdentifierAuthorities() {
        return repository.listAll();
    }

    @Query("getResolvedIdentifierAuthoritiesByLabel")
    public List<ResolvedIdentifierAuthority> getResolvedIdentifierAuthoritiesByLabel(String label) {
        return repository.findByAuthorityLabel(label);
    }

    @Query("getResolvedIdentifierAuthoritiesPaged")
    public List<ResolvedIdentifierAuthority> getResolvedIdentifierAuthoritiesPaged(
            @Description("Page number to fetch") int page,
            @Description("Number of items per page") int size){
        return repository.findByPage(page, size);
    }
}