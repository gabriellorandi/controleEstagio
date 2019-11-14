package com.pw3.controleestagio.repository;


import com.pw3.controleestagio.model.Aluno;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
public class AlunoRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public void add(Aluno aluno) {
        this.entityManager.persist(aluno);
    }

    public void remove(Aluno aluno) {
        this.entityManager.remove(aluno);
    }

    public Aluno get(int id) {
        return this.entityManager.find(Aluno.class, id);
    }

    public List<Aluno> getAll() {
        Query query = this.entityManager.createQuery("SELECT a FROM aluno a WHERE a.valido = true ");
        return query.getResultList();
    }

}
