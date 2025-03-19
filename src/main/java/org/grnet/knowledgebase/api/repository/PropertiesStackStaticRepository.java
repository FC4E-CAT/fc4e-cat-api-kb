package org.grnet.knowledgebase.api.repository;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import org.grnet.knowledgebase.api.entity.view.PropertiesStackStatic;

import java.util.List;

@ApplicationScoped
public class PropertiesStackStaticRepository implements PanacheRepository<PropertiesStackStatic> {

    public List<PropertiesStackStatic> findByPropertyLabel(String labelProperty) {
        return find("labelProperty", labelProperty).list();
    }
    public List<PropertiesStackStatic> findByPage(int page, int size) {
        return findAll().page(page, size).list();
    }
}