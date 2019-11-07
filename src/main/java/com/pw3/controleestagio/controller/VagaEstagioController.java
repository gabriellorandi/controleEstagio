package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.Usuario;
import com.pw3.controleestagio.model.VagaEstagio;
import com.pw3.controleestagio.repository.VagaEstagioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
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

        Usuario usuario = (Usuario) session.getAttribute("usuario");

        if(usuario.isEmpresa()) {

            vagaEstagioRepository.add(vagaEstagio);

            return "";
        }

        return "";
    }

    @Transactional
    @RequestMapping("/listar")
    public String getAll(HttpSession session, Model model) {

        Usuario usuario = (Usuario) session.getAttribute("usuario");

        if(usuario.isAluno()) {

            List<VagaEstagio> vagaEstagios = vagaEstagioRepository.getAll();

            model.addAttribute("vagaEstagios", vagaEstagios);

            return "";
        }

        return "";
    }



}
