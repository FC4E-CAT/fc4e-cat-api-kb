package org.grnet.knowledgebase.api.graphql;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.view.PropertiesStackDynamic;
import org.grnet.knowledgebase.api.repository.PropertiesStackDynamicRepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class PropertiesStackDynamicResource {

    @Inject
    PropertiesStackDynamicRepository repository;

    @Query("getPropertiesStackDynamic")
    public List<PropertiesStackDynamic> getPropertiesStackDynamic() {
        return repository.listAll();
    }

    @Query("getPropertiesStackDynamicByLabel")
    public List<PropertiesStackDynamic> getPropertiesStackDynamicByLabel(String label) {
        return repository.findByPropertyLabel(label);
    }

    @Query("getPropertiesStackDynamicPaged")
    public List<PropertiesStackDynamic> getPropertiesStackDynamicPaged(
            @Description("Page number to fetch") int page,
            @Description("Number of items per page") int size){
        return repository.findByPage(page, size);
    }
}
