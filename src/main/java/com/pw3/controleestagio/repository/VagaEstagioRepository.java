package com.pw3.controleestagio.repository;

import com.pw3.controleestagio.model.VagaEstagio;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
public class VagaEstagioRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public void add(VagaEstagio vagaEstagio) {
        this.entityManager.persist(vagaEstagio);
    }

    public void remove(VagaEstagio vagaEstagio) {
        this.entityManager.remove(vagaEstagio);
    }

    public VagaEstagio get(int id) {
        return this.entityManager.find(VagaEstagio.class, id);
    }

    public List<VagaEstagio> getAll() {
        Query query = this.entityManager.createQuery("SELECT v FROM VagaEstagio v ");
        return query.getResultList();
    }

}
