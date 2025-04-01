package org.grnet.knowledgebase.api.graphql.view;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.view.PropertiesStackCombined;
import org.grnet.knowledgebase.api.repository.PropertiesStackCombinedRepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class PropertiesStackCombinedResource {

    @Inject
    PropertiesStackCombinedRepository repository;

    @Query("getPropertiesStackCombined")
    @Description("[view] Fetches combined properties from the database.")
    public List<PropertiesStackCombined> getPropertiesStackCombined() {
        return repository.listAll();
    }

    @Query("getPropertiesStackCombinedById")
    @Description("[view] Fetches a Property Stack Combination by Id")
    public PropertiesStackCombined getPropertyStackCombinedById(
            @Name("id")
            @DefaultValue("pid_graph:D9D0AD30")
            @Description("The id of the identifier") String id) {
        return repository.findById(id);
    }

    @Query("getPropertiesStackCombinedByLabel")
    @Description("[view] Fetches a list of combined (static, dynamic) properties by label")
    public List<PropertiesStackCombined> getPropertiesStackCombinedByLabel(
            @Name("label")
            @DefaultValue("Status")
            @Description("The label of the Property") String label) {
        return repository.findByPropertyLabel(label);
    }

    @Query("searchPropertiesStackCombinedStack")
    @Description("[view] Fetches a list of properties stacks combined by search")
    public List<PropertiesStackCombined> searchPropertiesStackCombined(
            @Name("search")
            @DefaultValue("hasProperty")
            @Description("Search by labelProperty, lodIDN, labelIdentifier, value") String search) {
        return repository.searchByKeyword(search);
    }

    @Query("getPropertiesStackCombinedPaged")
    @Description("[view] Fetches a paginated list of the combined (static, dynamic) properties")
    public List<PropertiesStackCombined> getPaginatedPropertiesStackCombines(
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
