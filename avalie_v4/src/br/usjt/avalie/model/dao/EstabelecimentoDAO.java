package br.usjt.avalie.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.usjt.avalie.model.entity.Estabelecimento;

@Repository
public class EstabelecimentoDAO {
	@PersistenceContext
	EntityManager manager;
	
	public void registrar(Estabelecimento estabelecimento){
		manager.persist(estabelecimento);
	}
	
	@SuppressWarnings("unchecked")
	public List<Estabelecimento> listarEstabelecimentos(){
	return manager.createQuery("select e from Estabelecimento e").getResultList();
	}
}
