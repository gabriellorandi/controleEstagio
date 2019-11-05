package com.pw3.controleestagio.repository;


import com.pw3.controleestagio.model.Aluno;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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

}
