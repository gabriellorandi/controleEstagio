package com.pw3.controleestagio.repository;


import com.pw3.controleestagio.model.Supervisor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
public class SupervisorRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public void add(Supervisor supervisor) {
        this.entityManager.persist(supervisor);
    }

    public void remove(Supervisor supervisor) {
        this.entityManager.remove(supervisor);
    }

    public Supervisor get(int id) {
        return this.entityManager.find(Supervisor.class, id);
    }

}
