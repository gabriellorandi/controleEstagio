package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.*;
import com.pw3.controleestagio.repository.VagaEstagioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/vaga-estagio")
public class VagaEstagioController {

    private final VagaEstagioRepository vagaEstagioRepository;

    @Autowired
    public VagaEstagioController(VagaEstagioRepository vagaEstagioRepository) {
        this.vagaEstagioRepository = vagaEstagioRepository;
    }

    @Transactional
    @RequestMapping("/cadastrar")
    public String cadastra(VagaEstagio vagaEstagio, HttpSession session) {

        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isEmpresa(usuario)) {
            return "redirect:acessoNegado";
        }

        vagaEstagio.setEmpresa((Empresa) usuario);

        vagaEstagioRepository.add(vagaEstagio);

        return "redirect:/empresa/iniciarPaginaEmpresa";
    }

    @Transactional
    @RequestMapping("/listar")
    public String getAll(HttpSession session, Model model) {

        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isAluno(usuario)) {
            return "redirect:acessoNegado";
        }

        List<VagaEstagio> vagaEstagios = vagaEstagioRepository.getAll();

        model.addAttribute("vagaEstagios", vagaEstagios);

        return "redirect:/administrador/iniciarPaginaAdmin";
    }

    @Transactional
    @RequestMapping("/candidatar/{vagaEstagioId}")
    public String candidatar(HttpSession session, Model model, @PathVariable int vagaEstagioId) {

        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isAluno(usuario)) {
            return "redirect:acessoNegado";
        }

        VagaEstagio vagaEstagio = vagaEstagioRepository.get(vagaEstagioId);


        vagaEstagio.setAluno( (Aluno) usuario );

        vagaEstagioRepository.add(vagaEstagio);

        return "redirect:/aluno/iniciarPaginaAluno";
    }

}
