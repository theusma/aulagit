package br.usjt.avalie.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.usjt.avalie.model.entity.Avaliacao;
import br.usjt.avalie.model.entity.Estabelecimento;
import br.usjt.avalie.model.service.AvaliacaoService;

@Controller
public class AvaliacaoController {
	
	private AvaliacaoService as;
	
	@Autowired
	public AvaliacaoController(AvaliacaoService as){
		this.as = as;
	}
	
	@RequestMapping("/listarAvaliacoes")
	public String listar(Estabelecimento estabelecimento, int id, BindingResult result, Model model){
		try{
			List<Avaliacao> lista = as.listar(estabelecimento, id);
			model.addAttribute("lista", lista);
			return "mostraAvaliacao";
		}catch(IOException e){
			e.printStackTrace();
			return "Erro";
		}
	}

}
