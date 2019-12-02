package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.Aluno;
import com.pw3.controleestagio.model.Relatorio;
import com.pw3.controleestagio.model.Supervisor;
import com.pw3.controleestagio.model.Usuario;
import com.pw3.controleestagio.repository.AlunoRepository;
import com.pw3.controleestagio.repository.RelatorioRepository;
import com.pw3.controleestagio.repository.SupervisorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/supervisor")
public class SupervisorController {

    private final SupervisorRepository supervisorRepository;
    private final RelatorioRepository relatorioRepository;
    private final AlunoRepository alunoRepository;

    @Autowired
    public SupervisorController(SupervisorRepository supervisorRepository, RelatorioRepository relatorioRepository, AlunoRepository alunoRepository) {
        this.supervisorRepository = supervisorRepository;
        this.relatorioRepository = relatorioRepository;
        this.alunoRepository = alunoRepository;
    }

    @RequestMapping("/iniciarPaginaSupervisor")
    public String iniciarPaginaAdmin(HttpSession session, Model model) {
        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isSupervisor(usuario)) {
            return "redirect:acessoNegado";
        }

        model.addAttribute("listaRelatorios", new ArrayList<>());
        List<Relatorio> relatorios = relatorioRepository.getAllBySupervisor((Supervisor) usuario);
        model.addAttribute("listaRelatorios", relatorios);
        return "paginaSupervisor";
    }

    @Transactional
    @RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
    public String cadastra(HttpSession session, Supervisor supervisor, String senhaRepetida) {

        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        if(supervisor.getSenha().equals(senhaRepetida)) {
            supervisorRepository.add(supervisor);
        }

        return "paginaAdmin";
    }

    @Transactional
    @RequestMapping("/{supervisorId}/associar/{alunoId}")
    public String associarAluno(HttpSession session, @PathVariable int supervisorId,  @PathVariable int alunoId) {

        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        Supervisor supervisor = supervisorRepository.get(supervisorId);
        Aluno aluno = alunoRepository.get(alunoId);

        supervisor.setAluno(aluno);

        supervisorRepository.add(supervisor);

        return "redirect:/administrador/iniciarPaginaAdmin";
    }
}
