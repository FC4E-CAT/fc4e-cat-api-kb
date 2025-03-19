package org.grnet.knowledgebase.api.graphql;

import jakarta.inject.Inject;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.Scheme;
import org.grnet.knowledgebase.api.repository.SchemeRepository;

import java.util.List;

@GraphQLApi
public class SchemeResource {

    @Inject
    SchemeRepository repository;

    @Query("getSchemes")
    @Description("Get All Schemes")
    public List<Scheme> getSchemes() {
        return repository.listAll();
    }

    @Query("getSchemeById")
    @Description("Fetches a Scheme by Id")
    public Scheme getSchemeById(
            @Name("id")
            @DefaultValue("pid_graph:466E3789")
            @Description("The id of the scheme") String id) {
        return repository.findById(id);
    }

    @Query("getStandardByPage")
    @Description("Fetches a paginated list of Scheme")
    public List<Scheme> getPaginatedSchemes(
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