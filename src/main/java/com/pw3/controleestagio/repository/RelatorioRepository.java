package com.pw3.controleestagio.repository;

import com.pw3.controleestagio.model.Relatorio;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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

}
