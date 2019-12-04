package com.pw3.controleestagio.repository;


import com.pw3.controleestagio.model.Supervisor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
public class SupervisorRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public boolean existLogin(Supervisor supervisor) {
        Query query = this.entityManager.createQuery("SELECT s FROM supervisor s WHERE s.login LIKE :login");
        query.setParameter("login",supervisor.getLogin());
        return (query.getResultList().size() > 0 )?true:false;
    }

    public void add(Supervisor supervisor) {
        this.entityManager.persist(supervisor);
    }

    public void remove(Supervisor supervisor) {
        this.entityManager.remove(supervisor);
    }

    public Supervisor get(int id) {
        return this.entityManager.find(Supervisor.class, id);
    }

    public List<Supervisor> getAll() {
        Query query = this.entityManager.createQuery("SELECT s FROM supervisor s ");
        return query.getResultList();
    }
}
