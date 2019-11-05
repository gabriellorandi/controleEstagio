package com.pw3.controleestagio.repository;


import com.pw3.controleestagio.model.Curriculo;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
public class CurriculoRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public void add(Curriculo curriculo) {
        this.entityManager.persist(curriculo);
    }

    public void remove(Curriculo curriculo) {
        this.entityManager.remove(curriculo);
    }

    public Curriculo get(int id) {
        return this.entityManager.find(Curriculo.class, id);
    }

}
