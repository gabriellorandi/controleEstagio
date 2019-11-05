package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.Administrador;
import com.pw3.controleestagio.model.Empresa;
import com.pw3.controleestagio.repository.EmpresaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/empresa")
public class EmpresaController {

    private final EmpresaRepository empresaRepository;

    @Autowired
    public EmpresaController(EmpresaRepository empresaRepository) {
        this.empresaRepository = empresaRepository;
    }

    @Transactional
    @RequestMapping("/cadastrar")
    public String cadastra(Empresa empresa) {

        empresaRepository.add(empresa);

        return "";

    }

    @Transactional
    @RequestMapping("/listar")
    public String getAll(HttpSession session, Model model) {

        if(session.getAttribute("usuario") instanceof Administrador) {

            List<Empresa> empresas = empresaRepository.getAll();

            model.addAttribute("empresas", empresas);

            return "";

        }

        return "";

    }

    @Transactional
    @RequestMapping("/validar/{empresaId}")
    public String validarEmpresa(HttpSession session, @PathVariable int empresaId) {

        if(session.getAttribute("usuario") instanceof Administrador) {

            Empresa empresa = empresaRepository.get(empresaId);

            empresa.setValido(true);

            empresaRepository.add(empresa);

            return "";

        }

        return "";

    }

}
