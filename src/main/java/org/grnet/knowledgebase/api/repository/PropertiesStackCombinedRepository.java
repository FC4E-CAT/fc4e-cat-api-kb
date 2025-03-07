package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.view.PropertiesStackCombined;

import java.util.List;

@ApplicationScoped
public class PropertiesStackCombinedRepository implements PanacheRepository<PropertiesStackCombined> {

    public List<PropertiesStackCombined> findByPropertyLabel(String labelProperty) {
        return find("labelProperty", labelProperty).list();
    }

    public List<PropertiesStackCombined> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }
}