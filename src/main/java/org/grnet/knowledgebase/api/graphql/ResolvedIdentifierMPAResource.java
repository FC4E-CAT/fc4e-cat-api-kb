package org.grnet.knowledgebase.api.graphql;

import jakarta.inject.Inject;
import jakarta.enterprise.context.ApplicationScoped;
import org.eclipse.microprofile.graphql.*;
import org.grnet.knowledgebase.api.entity.view.ResolvedIdentifierMPA;
import org.grnet.knowledgebase.api.repository.ResolvedIdentifierMPARepository;

import java.util.List;

@GraphQLApi
@ApplicationScoped
public class ResolvedIdentifierMPAResource {

    @Inject
    ResolvedIdentifierMPARepository repository;

    /**
     * 📄 Retrieves all Resolved Identifier MPAs.
     * @return List of all MPAs.
     */
    @Query("getResolvedIdentifierMPAs")
    @Description("Fetch all resolved identifier mpas")
    public List<ResolvedIdentifierMPA> getResolvedIdentifierMPAs() {
        return repository.listAll();
    }

    /**
     * Finds MPAs by label.
     * @param labelMPA The label of the MPA (e.g., "DataCite").
     * @return List of MPAs matching the label.
     */
    @Query("getResolvedIdentifierMPAsByLabel")
    @Description("Fetches a list of resolved identifier MPAs by label")
    public List<ResolvedIdentifierMPA> getResolvedIdentifierMPAsByLabel(
            @Name("label")
            @Description("The label of the MPA (Multi-Provider-Agency)")
            String labelMPA) {
        return repository.findByLabel(labelMPA);
    }

    /**
     * Retrieves a paginated list of MPAs.
     * @param page The page number (starting from 0).
     * @param size The number of records per page.
     * @return A paginated list of MPAs.
     */
    @Query("getResolvedIdentifierMPAsPaged")
    @Description("Fetches a paginated list of resolved identifier MPAs")
    public List<ResolvedIdentifierMPA> getResolvedIdentifierMPAsPaged(
            @Name("Page")
            @DefaultValue("1")
            @Description("Indicates the page number. Page number must be >= 1.") int page,
            @Name("Size")
            @DefaultValue("10")
            @Description("Page size must be between 1 and 100.") int size){
        return repository.findByPage(page, size);
    }
}
