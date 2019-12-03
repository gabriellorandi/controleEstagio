package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.*;
import com.pw3.controleestagio.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/administrador")
public class AdministradorController {

    private final AdministradorRepository administradorRepository;
    private final AlunoRepository alunoRepository;
    private final EmpresaRepository empresaRepository;
    private final RelatorioRepository relatorioRepository;
    private final SupervisorRepository supervisorRepository;
    private final EstagioRepository estagioRepository;
    private final VagaEstagioRepository vagaEstagioRepository;

    @Autowired
    public AdministradorController(AdministradorRepository administradorRepository, AlunoRepository alunoRepository, EmpresaRepository empresaRepository, RelatorioRepository relatorioRepository, SupervisorRepository supervisorRepository, EstagioRepository estagioRepository, VagaEstagioRepository vagaEstagioRepository) {
        this.administradorRepository = administradorRepository;
        this.alunoRepository = alunoRepository;
        this.empresaRepository = empresaRepository;
        this.relatorioRepository = relatorioRepository;
        this.supervisorRepository = supervisorRepository;
        this.estagioRepository = estagioRepository;
        this.vagaEstagioRepository = vagaEstagioRepository;
    }

    @RequestMapping("/iniciarPaginaAdmin")
    public String iniciarPaginaAdmin(HttpSession session, Model model){
        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "acessoNegado";
        }

        List<Aluno> listaAlunosValidar = alunoRepository.getAllValidar();
        List<Empresa> listaEmpresasValidar = empresaRepository.getAllValidar();
        List<Relatorio> listaRelatoriosValidar = relatorioRepository.getAllValidar();
        model.addAttribute("listaAlunosValidar", listaAlunosValidar);
        model.addAttribute("listaEmpresasValidar", listaEmpresasValidar);
        model.addAttribute("listaRelatoriosValidar", listaRelatoriosValidar);

        List<Aluno> listaAlunos = alunoRepository.getAll();
        List<Empresa> listaEmpresas = empresaRepository.getAll();
        List<Relatorio> listaRelatorios = relatorioRepository.getAll();
        List<Supervisor> listaSupervisores = supervisorRepository.getAll();
        List<Estagio> listaEstagios = estagioRepository.getAll();
        model.addAttribute("listaAlunos", listaAlunos);
        model.addAttribute("listaEmpresas", listaEmpresas);
        model.addAttribute("listaRelatorios", listaRelatorios);
        model.addAttribute("listaSupervisores", listaSupervisores);
        model.addAttribute("listaEstagio", listaEstagios);

        if (usuario instanceof Administrador)
            model.addAttribute("admin", usuario);

        return "paginaAdmin";
    }

    @RequestMapping("/cadastrarAdmin")
    public String cadastrarAdmin(HttpSession session) {
        Object usuario = session.getAttribute("usuario");
        if(Usuario.isAdmin(usuario)) {
            return "redirect:cadastrarAdministrador";
        }
        return "redirect:acessoNegado";
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
