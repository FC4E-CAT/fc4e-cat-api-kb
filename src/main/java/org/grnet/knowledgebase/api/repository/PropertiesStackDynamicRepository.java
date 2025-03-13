package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.view.PropertiesStackDynamic;

import java.util.List;

@ApplicationScoped
public class PropertiesStackDynamicRepository implements PanacheRepository<PropertiesStackDynamic> {

    public List<PropertiesStackDynamic> findByPropertyLabel(String labelProperty) {
        return find("labelProperty", labelProperty).list();
    }

    public List<PropertiesStackDynamic> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }
}
