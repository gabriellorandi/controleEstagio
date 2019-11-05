package com.pw3.controleestagio.repository;


import com.pw3.controleestagio.model.Empresa;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
public class EmpresaRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public void add(Empresa empresa) {
        this.entityManager.persist(empresa);
    }

    public void remove(Empresa empresa) {
        this.entityManager.remove(empresa);
    }

    public Empresa get(int id) {
        return this.entityManager.find(Empresa.class, id);
    }

}
