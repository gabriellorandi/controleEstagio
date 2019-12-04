package com.pw3.controleestagio.repository;


import com.pw3.controleestagio.model.Aluno;
import com.pw3.controleestagio.model.Curriculo;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
public class CurriculoRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public void add(Curriculo curriculo) {
        this.entityManager.persist(curriculo);
    }

    public void remove(Curriculo curriculo) {
        this.entityManager.remove(curriculo);
    }

    public Curriculo get(int id) {
        return this.entityManager.find(Curriculo.class, id);
    }

    public Curriculo getByAluno(Aluno aluno) {
        try {
            Query query = this.entityManager.createQuery("SELECT c FROM Curriculo c WHERE c.aluno = aluno ");
            return (Curriculo) query.getSingleResult();
        } catch (Exception e) {
            return null;
        }
    }

    public List<Curriculo> getAll() {
        Query query = this.entityManager.createQuery("SELECT c FROM Curriculo  c ");
        return query.getResultList();
    }
}
