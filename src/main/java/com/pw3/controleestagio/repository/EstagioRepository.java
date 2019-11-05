package com.pw3.controleestagio.repository;

import com.pw3.controleestagio.model.Estagio;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
public class EstagioRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public void add(Estagio estagio) {
        this.entityManager.persist(estagio);
    }

    public void remove(Estagio estagio) {
        this.entityManager.remove(estagio);
    }

    public Estagio get(int id) {
        return this.entityManager.find(Estagio.class, id);
    }

}
