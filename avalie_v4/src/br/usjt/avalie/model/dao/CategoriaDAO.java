package br.usjt.avalie.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import br.usjt.avalie.model.entity.Categoria;

@Repository
public class CategoriaDAO {
	
	@PersistenceContext
	EntityManager manager;
	
	public List<Categoria> listar(){
		String jpql = "SELECT c FROM Categoria c";
		TypedQuery<Categoria> query = manager.createQuery(jpql, Categoria.class);
		return query.getResultList();
	}
}
