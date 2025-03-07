package org.grnet.knowledgebase.api.graphql;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.view.PropertiesStackCombined;
import org.grnet.knowledgebase.api.repository.PropertiesStackCombinedRepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class PropertiesStackCombinedResource {

    @Inject
    PropertiesStackCombinedRepository repository;

    @Query("getPropertiesStackCombined")
    public List<PropertiesStackCombined> getPropertiesStackCombined() {
        return repository.listAll();
    }

    @Query("getPropertiesStackCombinedByLabel")
    public List<PropertiesStackCombined> getPropertiesStackCombinedByLabel(String label) {
        return repository.findByPropertyLabel(label);
    }

    @Query("getPropertiesStackCombinedPaged")
    public List<PropertiesStackCombined> getPropertiesStackCombinedPaged(
            @Description("Page number to fetch") int page,
            @Description("Number of items per page") int size){
        return repository.findByPage(page, size);
    }
}
