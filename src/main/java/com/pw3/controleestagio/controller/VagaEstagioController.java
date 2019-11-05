package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.Aluno;
import com.pw3.controleestagio.model.Empresa;
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

        if(session.getAttribute("usuario") instanceof Empresa) {

            vagaEstagioRepository.add(vagaEstagio);

            return "";

        }

        return "";

    }

    @Transactional
    @RequestMapping("/listar")
    public String getAll(HttpSession session, Model model) {

        if(session.getAttribute("usuario") instanceof Aluno) {

            List<VagaEstagio> vagaEstagios = vagaEstagioRepository.getAll();

            model.addAttribute("vagaEstagios", vagaEstagios);

            return "";

        }

        return "";

    }



}
