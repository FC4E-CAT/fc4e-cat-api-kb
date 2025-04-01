package org.grnet.knowledgebase.api.graphql.entity;

import jakarta.inject.Inject;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.Standard;
import org.grnet.knowledgebase.api.repository.StandardRepository;

import java.util.List;

@GraphQLApi
public class StandardResource {

    @Inject
    StandardRepository repository;

    @Query("getStandards")
    @Description("[entity] Get All Standards")
    public List<Standard> getStandards() {
        return repository.listAll();
    }

    @Query("getStandardById")
    @Description("[entity] Fetches a Standard by Id")
    public Standard getStandardById(
            @Name("id")
            @DefaultValue("pid_graph:FCDAACDB")
            @Description("The id of the standard") String id) {
        return repository.findById(id);
    }

    @Query("getStandardByPage")
    @Description("[entity] Fetches a paginated list of Standards")
    public List<Standard> getPaginatedResource(
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