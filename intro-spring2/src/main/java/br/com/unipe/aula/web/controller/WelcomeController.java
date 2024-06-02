package br.com.unipe.aula.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.unipe.aula.dao.MembroClubeLeituraDAO;
import br.com.unipe.aula.model.MembroClubeLeitura;

@Controller
public class WelcomeController {
	
	@Autowired
	private MembroClubeLeituraDAO dao;
	
	@RequestMapping(value = "/formulario", method = RequestMethod.GET)
    public String formulario(Model model) {
        model.addAttribute("membro", new MembroClubeLeitura());
        return "formulario";
    }
    
    @RequestMapping(value = "/formulario", method = RequestMethod.POST)
    public String salvarMembro(@ModelAttribute MembroClubeLeitura membro) {
        dao.salvar(membro);
        return "redirect:/listaMembros";
    }
    
    @RequestMapping(value = "/listaMembros", method = RequestMethod.GET)
    public String listaMembros(Model model) {
        model.addAttribute("membros", dao.getAll());
        return "listaMembros";
    }
    
    @GetMapping(value="/excluir/{id}")
    public String excluirMembro(@PathVariable("id") Long id) {
        dao.excluir(id);
        return "redirect:/listaMembros";
    }
    
    @GetMapping(value="/editar/{id}")
    public String exibeEditarMembro(@PathVariable("id") Long id, Model model) {
        model.addAttribute("membro", dao.getId(id));
        return "editar";
    }
    
    @PostMapping(value="/editar/{id}")
    public String editarMembro(@PathVariable("id") Long id, @ModelAttribute MembroClubeLeitura membro) {
        dao.editar(membro);
        return "redirect:/listaMembros";
    }
}