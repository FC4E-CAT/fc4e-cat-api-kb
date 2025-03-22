package org.grnet.knowledgebase.api.graphql.entity;

import io.quarkus.panache.common.Page;
import jakarta.inject.Inject;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.Manager;
import org.grnet.knowledgebase.api.repository.ManagerRepository;

import java.util.List;

@GraphQLApi
public class ManagerResource {

    @Inject
    ManagerRepository repository;

    @Query("getManagers")
    @Description("Get All Managers")
    public List<Manager> getAuthorities() {
        return repository.listAll();
    }

    @Query("getManagerById")
    @Description("[entity] Fetches a Manager by Id")
    public Manager getManagerById(
            @Name("id")
            @DefaultValue("pid_graph:2FBC5B5F")
            @Description("The id of the manager") String id) {
        return repository.findById(id);
    }

    @Query("getManagerByPage")
    @Description("[entity] Fetches a paginated list of Managers")
    public List<Manager> getPaginatedManagers(
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