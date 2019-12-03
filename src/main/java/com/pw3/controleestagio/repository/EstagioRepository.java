package com.pw3.controleestagio.repository;

import com.pw3.controleestagio.model.Estagio;
import com.pw3.controleestagio.model.Supervisor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
public class EstagioRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public void add(Estagio estagio) {
        this.entityManager.persist(estagio);
    }

    public void remove(Estagio estagio) {

        this.entityManager.createQuery("UPDATE estagio e SET e.aluno = null WHERE e.id = estagio .id").executeUpdate();
        this.entityManager.remove(estagio);
    }

    public Estagio get(int id) {
        return this.entityManager.find(Estagio.class, id);
    }

    public List<Estagio> getAll() {
        Query query = this.entityManager.createQuery("SELECT e FROM estagio e ");
        return query.getResultList();
    }

}
