package org.grnet.knowledgebase.api.graphql.entity;

import jakarta.inject.Inject;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.Authority;
import org.grnet.knowledgebase.api.repository.AuthorityRepository;

import java.util.List;

@GraphQLApi
public class AuthorityResource {

    @Inject
    AuthorityRepository repository;

    @Query("getAuthorities")
    @Description("[entity] Fetches All Authorities")
    public List<Authority> getAuthorities() {
        return repository.listAll();
    }

    @Query("getAuthorityById")
    @Description("[entity] Fetches an Authority by Id")
    public Authority getAuthorityById(
            @Name("id")
            @DefaultValue("pid_graph:00C7B7CF")
            @Description("The id of the authority") String id) {
        return repository.findById(id);
    }

    @Query("getAuthorityByPage")
    @Description("[entity] Fetches a paginated list of Authorities")
    public List<Authority> getPaginatedAuthorities(
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