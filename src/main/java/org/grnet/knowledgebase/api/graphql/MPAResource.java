package org.grnet.knowledgebase.api.graphql;

import jakarta.inject.Inject;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Name;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.Authority;
import org.grnet.knowledgebase.api.entity.MPA;
import org.grnet.knowledgebase.api.repository.AuthorityRepository;
import org.grnet.knowledgebase.api.repository.MPARepository;

import java.util.List;

@GraphQLApi
public class MPAResource {

    @Inject
    MPARepository repository;

    @Query("getMPAs")
    @Description("Get All MPA")
    public List<MPA> getMPAs() {
        return repository.listAll();
    }

    @Query("getMPAById")
    @Description("Fetches a paginated list of MPAs")
    public MPA getMPAById(
            @Name("id")
            @Description("The id of the MPA") String id) {
        return repository.findById(id);
    }
}