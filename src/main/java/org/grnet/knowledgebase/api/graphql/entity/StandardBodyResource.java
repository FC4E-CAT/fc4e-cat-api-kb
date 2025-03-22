package org.grnet.knowledgebase.api.graphql.entity;

import jakarta.inject.Inject;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.StandardsBody;
import org.grnet.knowledgebase.api.repository.StandardsBodyRepository;

import java.util.List;

@GraphQLApi
public class StandardBodyResource {

    @Inject
    StandardsBodyRepository repository;

    @Query("getStandardsBody")
    @Description("Get All StandardsBodies")
    public List<StandardsBody> getStandardsBodys() {
        return repository.listAll();
    }

    @Query("getStandardBodyById")
    @Description("[entity] Fetches a StandardBody by Id")
    public StandardsBody getStandardBodyById(
            @Name("id")
            @DefaultValue("pid_graph:FCDAACDB")
            @Description("The id of the StandardsBody") String id) {
        return repository.findById(id);
    }

    @Query("getStandardsBodyByPage")
    @Description("[entity] Fetches a paginated list of StandardsBodies")
    public List<StandardsBody> getPaginatedResource(
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