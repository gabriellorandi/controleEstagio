package com.pw3.controleestagio.repository;

import com.pw3.controleestagio.model.Aluno;
import com.pw3.controleestagio.model.Empresa;
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

    public List<VagaEstagio> getAllAvailable(Aluno aluno) {
        Query query = this.entityManager.createQuery("SELECT v FROM vagaestagio v LEFT JOIN v.alunos a WHERE a.id != :id OR a.id IS NULL ");
        query.setParameter("id",aluno.getId());
        return query.getResultList();
    }

    public List<VagaEstagio> getAllByEmpresa(Empresa empresa) {
        Query query = this.entityManager.createQuery("SELECT v FROM vagaestagio v WHERE v.empresa = :empresa ");
        query.setParameter("empresa",empresa);
        return query.getResultList();
    }

    public List<VagaEstagio> getAllWithCandidatos() {

        Query query = this.entityManager.createQuery("SELECT v FROM vagaestagio v INNER JOIN v.alunos a  WHERE a.id IS NOT NULL ");
        return query.getResultList();

    }
}
