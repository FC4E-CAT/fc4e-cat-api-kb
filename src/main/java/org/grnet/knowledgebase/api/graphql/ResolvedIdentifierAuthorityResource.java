package org.grnet.knowledgebase.api.graphql;

import jakarta.inject.Inject;
import jakarta.enterprise.context.ApplicationScoped;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierAuthority;
import org.grnet.knowledgebase.api.repository.ResolvedIdentifierAuthorityRepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class ResolvedIdentifierAuthorityResource {

    @Inject
    ResolvedIdentifierAuthorityRepository repository;

    @Query("getResolvedIdentifierAuthorities")
    @Description("Fetches resolved identifier authority ")
    public List<ResolvedIdentifierAuthority> getResolvedIdentifierAuthorities() {
        return repository.listAll();
    }

    @Query("getResolvedIdentifierAuthoritiesByLabel")
    @Description("Fetches a list of resolved identifier authorities by label")
    public List<ResolvedIdentifierAuthority> getResolvedIdentifierAuthoritiesByLabel(
            @Name("label")
            @Description("The label of the actor: Authority")
            String label) {
        return repository.findByAuthorityLabel(label);
    }

    @Query("getResolvedIdentifierAuthoritiesPaged")
    @Description("Fetches a paginated list of resolved identifier authorities")
    public List<ResolvedIdentifierAuthority> getResolvedIdentifierAuthoritiesPaged(
            @Name("Page")
            @DefaultValue("1")
            @Description("Indicates the page number. Page number must be >= 1.") int page,
            @Name("Size")
            @DefaultValue("10")
            @Description("Page size must be between 1 and 100.") int size){
        return repository.findByPage(page, size);
    }
}