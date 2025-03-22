package org.grnet.knowledgebase.api.graphql.view;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.view.PropertiesStackDynamic;
import org.grnet.knowledgebase.api.repository.PropertiesStackDynamicRepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class PropertiesStackDynamicResource {

    @Inject
    PropertiesStackDynamicRepository repository;

    @Query("getPropertiesStackDynamic")
    @Description("Fetches properties from the database.")
    public List<PropertiesStackDynamic> getPropertiesStackDynamic() {
        return repository.listAll();
    }

    @Query("getPropertiesStackDynamicByLabel")
    @Description("[view] Fetches a list of dynamic properties by label")
    public List<PropertiesStackDynamic> getPropertiesStackDynamicByLabel(
            @Name("label")
            @DefaultValue("Managers")
            @Description("The label of the Property") String label) {
        return repository.findByPropertyLabel(label);
    }

    @Query("getPropertiesStackDynamicPaged")
    @Description("[view] Fetches a paginated list of dynamic properties")
    public List<PropertiesStackDynamic> getPaginatedPropertiesStackDynamic(
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
