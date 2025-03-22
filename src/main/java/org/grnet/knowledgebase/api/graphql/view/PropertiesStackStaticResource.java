package org.grnet.knowledgebase.api.graphql.view;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.view.PropertiesStackStatic;
import org.grnet.knowledgebase.api.repository.PropertiesStackStaticRepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class PropertiesStackStaticResource {

    @Inject
    PropertiesStackStaticRepository repository;

    @Query("getPropertiesStackStatic")
    @Description("Fetches static properties from the database.")
    public List<PropertiesStackStatic> getPropertiesStackStatic() {
        return repository.listAll();
    }

    @Query("getPropertiesStackStaticByLabel")
    @Description("[view] Fetches a list of static properties by label")
    public List<PropertiesStackStatic> getPropertiesStackStaticByLabel(
            @Name("label")
            @DefaultValue("Resolution Topology")
            @Description("The label of the Property") String label) {
        return repository.findByPropertyLabel(label);
    }

    @Query("getPropertiesStackStaticPaged")
    @Description("[view] Fetches a paginated list of static properties")
    public List<PropertiesStackStatic> getPaginatedPropertiesStackStatic(
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
