package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.Administrador;
import com.pw3.controleestagio.repository.AdministradorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/administrador")
public class AdministradorController {

    private final AdministradorRepository administradorRepository;

    @Autowired
    public AdministradorController(AdministradorRepository administradorRepository) {
        this.administradorRepository = administradorRepository;
    }

    @RequestMapping("/cadastrarAdmin")
    public String cadastrarAdmin(HttpSession session) {
        if(session.getAttribute("usuario") instanceof Administrador) {
            return "redirect:cadastrarAdministrador";
        }
        return "redirect:login";
    }

    @Transactional
    @RequestMapping("/cadastrar")
    public String cadastra(Administrador administrador, String senhaRepetida) {

        if(administrador.getSenha().equals(senhaRepetida)) {
            administradorRepository.add(administrador);
        }

        return "login";
    }
}
