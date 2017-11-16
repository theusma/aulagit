package br.usjt.avalie.model.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.usjt.avalie.model.dao.EstabelecimentoDAO;
import br.usjt.avalie.model.entity.Estabelecimento;

@Service
public class EstabelecimentoService {
	
	private EstabelecimentoDAO dao;
	
	@Autowired
	public EstabelecimentoService(EstabelecimentoDAO dao) {
		this.dao = dao;
	}
	
	public void registrar(Estabelecimento estabelecimento) {
		dao.registrar(estabelecimento);
	}
	
	public List<Estabelecimento> listarEstabelecimentos() throws IOException{
		return dao.listarEstabelecimentos();
	}
}
