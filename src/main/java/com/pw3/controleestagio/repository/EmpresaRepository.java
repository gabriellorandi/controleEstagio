package com.pw3.controleestagio.repository;


import com.pw3.controleestagio.model.Empresa;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

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

    public List<Empresa> getAll() {
        Query query = this.entityManager.createQuery("SELECT e FROM Empresa e WHERE valido IS TRUE ");
        return query.getResultList();
    }

}
