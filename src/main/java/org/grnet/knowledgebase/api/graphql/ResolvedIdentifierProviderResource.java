package org.grnet.knowledgebase.api.graphql;

import jakarta.inject.Inject;
import jakarta.enterprise.context.ApplicationScoped;
import org.eclipse.microprofile.graphql.Description;
import org.eclipse.microprofile.graphql.GraphQLApi;
import org.eclipse.microprofile.graphql.Query;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierMPA;
import org.grnet.knowledgebase.api.repository.ResolvedIdentifierMPARepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class ResolvedIdentifierProviderResource {

    @Inject
    ResolvedIdentifierMPARepository repository;

    /**
     * 📄 Retrieves all Resolved Identifier MPAs.
     * @return List of all MPAs.
     */
    @Query("getResolvedIdentifierMPAs")
    public List<ResolvedIdentifierMPA> getResolvedIdentifierMPAs() {
        return repository.listAll();
    }

    /**
     * Finds MPAs by label.
     * @param labelMPA The label of the MPA (e.g., "DataCite").
     * @return List of MPAs matching the label.
     */
    @Query("getResolvedIdentifierMPAsByLabel")
    public List<ResolvedIdentifierMPA> getResolvedIdentifierMPAsByLabel(String labelMPA) {
        return repository.findByLabel(labelMPA);
    }

    /**
     * Retrieves a paginated list of MPAs.
     * @param page The page number (starting from 0).
     * @param size The number of records per page.
     * @return A paginated list of MPAs.
     */
    @Query("getResolvedIdentifierMPAsPaged")
    public List<ResolvedIdentifierMPA> getResolvedIdentifierMPAsPaged(
            @Description("Page number to fetch") int page,
            @Description("Number of items per page") int size) {
        return repository.findByPage(page, size);
    }
}
