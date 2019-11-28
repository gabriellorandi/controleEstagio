package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.*;
import com.pw3.controleestagio.repository.AdministradorRepository;
import com.pw3.controleestagio.repository.AlunoRepository;
import com.pw3.controleestagio.repository.EmpresaRepository;
import com.pw3.controleestagio.repository.RelatorioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/administrador")
public class AdministradorController {

    private final AdministradorRepository administradorRepository;
    private final AlunoRepository alunoRepository;
    private final EmpresaRepository empresaRepository;
    private final RelatorioRepository relatorioRepository;

    @Autowired
    public AdministradorController(AdministradorRepository administradorRepository, AlunoRepository alunoRepository, EmpresaRepository empresaRepository, RelatorioRepository relatorioRepository) {
        this.administradorRepository = administradorRepository;
        this.alunoRepository = alunoRepository;
        this.empresaRepository = empresaRepository;
        this.relatorioRepository = relatorioRepository;
    }

    @RequestMapping("/iniciarPaginaAdmin")
    public String iniciarPaginaAdmin(HttpSession session, Model model){
        List<Aluno> listaAlunos = alunoRepository.getAllValidar();
        List<Empresa> listaEmpresas = empresaRepository.getAllValidar();
        List<Relatorio> listaRelatorios = relatorioRepository.getAllValidar();
        model.addAttribute("listaAlunos", listaAlunos);
        model.addAttribute("listaEmpresas", listaEmpresas);
        model.addAttribute("listaRelatorios", listaRelatorios);

        Usuario usuario = (Usuario) session.getAttribute("usuario");
        if (usuario instanceof Administrador)
            model.addAttribute("admin", usuario);

        return "paginaAdmin";
    }

    @RequestMapping("/cadastrarAdmin")
    public String cadastrarAdmin(HttpSession session) {
        Usuario usuario = (Usuario) session.getAttribute("usuario");

        if(usuario.isAdmin()) {
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
