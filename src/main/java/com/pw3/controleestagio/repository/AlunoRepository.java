package com.pw3.controleestagio.repository;


import com.pw3.controleestagio.model.Aluno;
import com.pw3.controleestagio.model.Usuario;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import java.util.List;

@Repository
public class AlunoRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public void add(Aluno aluno) {
        this.entityManager.persist(aluno);
    }

    public boolean existLogin(Aluno aluno) {
        Query query = this.entityManager.createQuery("SELECT a FROM aluno a WHERE a.login LIKE :login");
        query.setParameter("login",aluno.getLogin());
        return (query.getResultList().size() > 0 )?true:false;
    }

    public void remove(Aluno aluno) {
        Query query = this.entityManager.createQuery("UPDATE supervisor s SET s.aluno = null WHERE s.aluno = :aluno");
        query.setParameter("aluno",aluno);
        query.executeUpdate();
        this.entityManager.remove(aluno);
    }

    public Aluno get(int id) {
        return this.entityManager.find(Aluno.class, id);
    }

    public List<Aluno> getAll() {
        Query query = this.entityManager.createQuery("SELECT a FROM aluno a WHERE a.valido = true ");
        return query.getResultList();
    }

    public List<Aluno> getAllValidar(){
        Query query = this.entityManager.createQuery("SELECT a FROM aluno a WHERE a.valido = false");
        return query.getResultList();
    }
}
