package org.grnet.knowledgebase.api.graphql;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
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
    @Description("Fetches combined properties from the database.")
    public List<PropertiesStackCombined> getPropertiesStackCombined() {
        return repository.listAll();
    }

    @Query("getPropertiesStackCombinedByLabel")
    @Description("Fetches a list of combined (static, dynamic) properties by label")
    public List<PropertiesStackCombined> getPropertiesStackCombinedByLabel(
            @Name("label")
            @Description("The label of the Property")
            String label) {
        return repository.findByPropertyLabel(label);
    }

    @Query("searchPropertiesStackCombinedStack")
    @Description("Fetches a list of properties stacks combined by search")
    public List<PropertiesStackCombined> searchPropertiesStackCombined(
            @Name("search")
            @Description("Search by lodIDN, labelIdentifier, value") String search) {
        return repository.searchByKeyword(search);
    }

    @Query("getPropertiesStackCombinedPaged")
    @Description("Fetches a paginated list of the combined (static, dynamic) properties")
    public List<PropertiesStackCombined> getPropertiesStackCombinedPaged(
            @Name("Page")
            @DefaultValue("1")
            @Description("Indicates the page number. Page number must be >= 1.") int page,
            @Name("Size")
            @DefaultValue("10")
            @Description("Page size must be between 1 and 100.") int size){
        return repository.findByPage(page, size);
    }
}
