package org.grnet.knowledgebase.api.graphql;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.view.PropertiesStackStatic;
import org.grnet.knowledgebase.api.repository.PropertiesStackStaticRepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class PropertiesStackStaticResource {

    @Inject
    PropertiesStackStaticRepository repository;

    @Query("getPropertiesStackStatic")
    public List<PropertiesStackStatic> getPropertiesStackStatic() {
        return repository.listAll();
    }

    @Query("getPropertiesStackStaticByLabel")
    public List<PropertiesStackStatic> getPropertiesStackStaticByLabel(String label) {
        return repository.findByPropertyLabel(label);
    }

    @Query("getPropertiesStackStaticPaged")
    public List<PropertiesStackStatic> getPropertiesStackStaticPaged(
            @Description("Page number to fetch") int page,
            @Description("Number of items per page") int size){
        return repository.findByPage(page, size);
    }
}
