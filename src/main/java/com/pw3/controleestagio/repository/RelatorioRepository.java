package com.pw3.controleestagio.repository;

import com.pw3.controleestagio.model.Relatorio;
import com.pw3.controleestagio.model.Supervisor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

@Repository
public class RelatorioRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public void add(Relatorio relatorio) {
        this.entityManager.persist(relatorio);
    }

    public void remove(Relatorio relatorio) {
        this.entityManager.remove(relatorio);
    }

    public Relatorio get(int id) {
        return this.entityManager.find(Relatorio.class, id);
    }

    public List<Relatorio> getAllValidar() {
        Query query = this.entityManager.createQuery("SELECT r FROM Relatorio r WHERE r.valido = false");
        return query.getResultList();
    }

    public List<Relatorio> getAllBySupervisor(Supervisor supervisor) {

        Query query = this.entityManager.createQuery("SELECT r FROM Relatorio r " +
                                                        " INNER JOIN Aluno a ON a.supervisor = :supervisor " +
                                                        " INNER JOIN Estagio e ON e.aluno = a " +
                                                        " INNER JOIN Relatorio r ON r.estagio = e " );

        return new ArrayList<>();

    }

}
