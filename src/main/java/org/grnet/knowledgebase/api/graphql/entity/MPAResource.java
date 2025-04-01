package org.grnet.knowledgebase.api.graphql.entity;

import jakarta.inject.Inject;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.MPA;
import org.grnet.knowledgebase.api.repository.MPARepository;

import java.util.List;

@GraphQLApi
public class MPAResource {

    @Inject
    MPARepository repository;

    @Query("getMPAs")
    @Description("[entity] Get All MPA")
    public List<MPA> getMPAs() {
        return repository.listAll();
    }

    @Query("getMPAById")
    @Description("[entity] Fetches a MPA by Id")
    public MPA getMPAById(
            @Name("id")
            @DefaultValue("pid_graph:70E2C260")
            @Description("The id of the MPA") String id) {
        return repository.findById(id);
    }


    @Query("getMPAsByPage")
    @Description("[entity] Fetches a paginated list of MPA")
    public List<MPA> getPaginatedMPAs(
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