package com.pw3.controleestagio.repository;


import com.pw3.controleestagio.model.Administrador;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
public class AdministradorRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public void add(Administrador administrador) {
        this.entityManager.persist(administrador);
    }

    public void remove(Administrador administrador) {
        this.entityManager.remove(administrador);
    }

    public Administrador get(int id) {
        return this.entityManager.find(Administrador.class, id);
    }

}
