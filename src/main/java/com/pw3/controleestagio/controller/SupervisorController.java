package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.Supervisor;
import com.pw3.controleestagio.model.Usuario;
import com.pw3.controleestagio.repository.SupervisorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

public class SupervisorController {

    private final SupervisorRepository supervisorRepository;

    @Autowired
    public SupervisorController(SupervisorRepository supervisorRepository) {
        this.supervisorRepository = supervisorRepository;
    }

    @Transactional
    @RequestMapping("/cadastrar")
    public String cadastra(Supervisor supervisor, String senhaRepetida) {

        if(supervisor.getSenha().equals(senhaRepetida)) {
            supervisorRepository.add(supervisor);
        }

        return "login";
    }

    @Transactional
    @RequestMapping("/listar")
    public String getAll(HttpSession session, Model model) {

        Usuario usuario = (Usuario) session.getAttribute("usuario");

        if(usuario.isAdmin()) {

            List<Supervisor> supervisores = supervisorRepository.getAll();

            model.addAttribute("supervisores", supervisores);

            return "";
        }

        return "";
    }

    @Transactional
    @RequestMapping("/validar/{supervisorId}")
    public String validarSupervisor(HttpSession session, @PathVariable int supervisorId) {

        Usuario usuario = (Usuario) session.getAttribute("usuario");

        if(usuario.isAdmin()) {

            Supervisor supervisor = supervisorRepository.get(supervisorId);

            supervisor.setValido(true);

            supervisorRepository.add(supervisor);

            return "";
        }

        return "";
    }

}
