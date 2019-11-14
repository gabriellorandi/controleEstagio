package com.pw3.controleestagio.repository;

import com.pw3.controleestagio.model.Usuario;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Repository
public class UsuarioRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public Usuario getByLoginAndSenha(String login, String senha) {

        Query query = this.entityManager.createQuery("SELECT u FROM usuario u WHERE u.login = ?1 AND u.senha = ?2");
        query.setParameter(1, login).setParameter(2, senha);

        try {
            return (Usuario) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        }

    }

}
