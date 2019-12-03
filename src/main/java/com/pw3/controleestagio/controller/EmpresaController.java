package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.Curriculo;
import com.pw3.controleestagio.model.Empresa;
import com.pw3.controleestagio.model.Usuario;
import com.pw3.controleestagio.model.VagaEstagio;
import com.pw3.controleestagio.repository.CurriculoRepository;
import com.pw3.controleestagio.repository.EmpresaRepository;
import com.pw3.controleestagio.repository.VagaEstagioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/empresa")
public class EmpresaController {

    private final EmpresaRepository empresaRepository;
    private final CurriculoRepository curriculoRepository;
    private final VagaEstagioRepository vagaEstagioRepository;

    @Autowired
    public EmpresaController(EmpresaRepository empresaRepository, CurriculoRepository curriculoRepository, VagaEstagioRepository vagaEstagioRepository) {
        this.empresaRepository = empresaRepository;
        this.curriculoRepository = curriculoRepository;
        this.vagaEstagioRepository = vagaEstagioRepository;
    }

    @RequestMapping("/iniciarPaginaEmpresa")
    public String iniciarPaginaAdmin(HttpSession session, Model model){
        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isEmpresa(usuario)) {
            return "acessoNegado";
        }

        List<Curriculo> curriculos = curriculoRepository.getAll();
        List<VagaEstagio> vagasEstagio = vagaEstagioRepository.getAll();

        model.addAttribute("empresa", usuario);
        model.addAttribute("listaCurriculos", curriculos);
        model.addAttribute("listaVagasEstagio",vagasEstagio);

        return "paginaEmpresa";
    }


    @Transactional
    @RequestMapping("/cadastrar")
    public String cadastra(Empresa empresa, String senhaRepetida, Model model) {

        if(empresa.getSenha().equals(senhaRepetida)) {
            empresaRepository.add(empresa);
        }

        model.addAttribute("mensagem", "Cadastro realizado com sucesso. Aguarde até que o administrador valide o seu cadastro.");
        return "redirect:/";
    }

    @Transactional
    @RequestMapping(value = "/deletar/{empresaId}")
    public String deletar(HttpSession session, @PathVariable int empresaId) {

        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        Empresa empresa = empresaRepository.get(empresaId);

        empresaRepository.remove(empresa);

        return "redirect:/administrador/iniciarPaginaAdmin";
    }

    @Transactional
    @RequestMapping(value = "/alterar/{empresaId}", method = RequestMethod.POST)
    public String alterar(HttpSession httpSession, Empresa empresa, @PathVariable int empresaId) {

        Object usuario = httpSession.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        Empresa update = empresaRepository.get(empresaId);

        update.setCnpj(empresa.getCnpj());
        update.setNomeFantasia(empresa.getNomeFantasia());
        update.setRazaoSocial(empresa.getRazaoSocial());

        empresaRepository.add(update);
        return "redirect:/administrador/iniciarPaginaAdmin";
    }

    @Transactional
    @RequestMapping("/validar/{empresaId}")
    public String validarEmpresa(HttpSession session, @PathVariable int empresaId) {
        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }
        Empresa empresa = empresaRepository.get(empresaId);
        empresa.setValido(true);
        empresaRepository.add(empresa);
        return "redirect:/administrador/iniciarPaginaAdmin";
    }

    @Transactional
    @RequestMapping("/rejeitar/{empresaId}")
    public String rejeitarEmpresa(HttpSession session, @PathVariable int empresaId){
        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }
        Empresa empresa = empresaRepository.get(empresaId);
        empresaRepository.remove(empresa);
        return "redirect:/administrador/iniciarPaginaAdmin";
    }
}
