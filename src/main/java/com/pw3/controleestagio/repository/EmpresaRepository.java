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

    public boolean existLogin(Empresa empresa) {
        Query query = this.entityManager.createQuery("SELECT e FROM empresa e WHERE e.login LIKE :login");
        query.setParameter("login",empresa.getLogin());
        return (query.getResultList().size() > 0 )?true:false;
    }

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
        Query query = this.entityManager.createQuery("SELECT e FROM empresa e WHERE valido = TRUE ");
        return query.getResultList();
    }

    public List<Empresa> getAllValidar(){
        Query query = this.entityManager.createQuery("SELECT e FROM empresa e WHERE e.valido = false");
        return query.getResultList();
    }

}
