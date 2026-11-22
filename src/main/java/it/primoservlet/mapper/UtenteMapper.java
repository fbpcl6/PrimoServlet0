package it.primoservlet.mapper;

import it.primoservlet.model.Utente;

public interface UtenteMapper {

	void insert(Utente utente);
	
	Utente findByEmail(String email);
}
