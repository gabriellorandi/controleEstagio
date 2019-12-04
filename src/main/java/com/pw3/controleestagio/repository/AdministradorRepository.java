package com.pw3.controleestagio.repository;


import com.pw3.controleestagio.model.Administrador;
import com.pw3.controleestagio.model.Aluno;
import com.pw3.controleestagio.model.Usuario;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
public class AdministradorRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public boolean existLogin(Administrador administrador) {
        Query query = this.entityManager.createQuery("SELECT a FROM administrador a WHERE a.login LIKE :login");
        query.setParameter("login",administrador.getLogin());
        return (query.getResultList().size() > 0 )?true:false;
    }

    public void add(Administrador administrador) {
        this.entityManager.persist(administrador);
    }

    public void remove(Administrador administrador) {
        this.entityManager.remove(administrador);
    }

    public Administrador get(int id) {
        return this.entityManager.find(Administrador.class, id);
    }

    /*
    public List<Usuario> getAllValidar(){
        Query query = this.entityManager.createQuery("SELECT u FROM usuario u WHERE u.valido = false");
        return query.getResultList()
    }*/
}
