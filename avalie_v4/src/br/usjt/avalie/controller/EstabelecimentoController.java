package br.usjt.avalie.controller;

import java.io.IOException;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.usjt.avalie.model.entity.Estabelecimento;
import br.usjt.avalie.model.service.CategoriaService;
import br.usjt.avalie.model.service.EstabelecimentoService;

@Transactional
@Controller
public class EstabelecimentoController {
	private CategoriaService cs;
	private EstabelecimentoService es;

	@Autowired
	public EstabelecimentoController(CategoriaService cs, EstabelecimentoService es) {
		this.cs = cs;
		this.es = es;
	}

	
	@RequestMapping("cadastrar_estabelecimento")
	public String CadastrarEstabelecimento(Model model) {
		model.addAttribute("categoria", cs.listar());
		return "estabelecimento/cadastrar_estabelecimento";
	}
	@RequestMapping("criar_estabelecimento")
	public String CriarEstabelecimento(Estabelecimento estabelecimento) {
		es.registrar(estabelecimento);
		return "redirect:interna";
	}
	
	@RequestMapping("listar_estabelecimentos")
	public String listagem(Model model, String chave) {
	try{
		model.addAttribute("estabelecimentos", es.listarEstabelecimentos());
			return "EstabelecimentoListar";
		} catch(IOException e){
			e.printStackTrace();
			model.addAttribute("erro",e);
		}
		return "erro";
	}
	
}
