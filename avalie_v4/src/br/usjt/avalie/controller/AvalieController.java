package br.usjt.avalie.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.usjt.avalie.model.entity.Usuario;
import br.usjt.avalie.model.service.AvaliacaoService;
import br.usjt.avalie.model.service.CategoriaService;
import br.usjt.avalie.model.service.EstabelecimentoService;
import br.usjt.avalie.model.service.UsuarioService;

@Transactional
@Controller
public class AvalieController {
	
	private AvaliacaoService as;
	private CategoriaService cs;
	private EstabelecimentoService es;
	private UsuarioService us;
	
	@Autowired
	public AvalieController(AvaliacaoService as, CategoriaService cs, EstabelecimentoService es, UsuarioService us){
		this.as = as;
		this.cs = cs;
		this.es = es;
		this.us = us;
	}
	
	@RequestMapping("index")
	public String inicio() {
		return "index";
	}
	
	@RequestMapping("interna")
	public String interna(Model model, String chave, HttpSession session, Usuario usuario) {
	try{
		model.addAttribute("estabelecimentos", es.listarEstabelecimentos());
		model.addAttribute("categoria", cs.listar());
		session.getAttribute("usuarioLogado");
		return "interna";
		} catch(IOException e){
			e.printStackTrace();
			model.addAttribute("erro",e);
		}
		return "erro";
	}
}
