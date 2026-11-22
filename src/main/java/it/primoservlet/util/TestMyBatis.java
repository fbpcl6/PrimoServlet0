package it.primoservlet.util;

import org.apache.ibatis.session.SqlSession;

import it.primoservlet.mapper.UtenteMapper;
import it.primoservlet.model.Utente;

public class TestMyBatis {

	public static void main(String[] args) {
		
		
			try (SqlSession session =
			MyBatisUtils.getSqlSessionFactory().openSession(true)) {
			UtenteMapper mapper = session.getMapper(UtenteMapper.class);
			Utente u = mapper.findByEmail("lorenzo@pink.com");
			System.out.println(u == null ? "Nessun utente" : u.getNome() + " " + u.getCognome());
			}
			}
}
