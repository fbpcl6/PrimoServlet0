import org.apache.ibatis.session.SqlSession;


import it.primoservlet.mapper.UtenteMapper;
import it.primoservlet.model.Utente;
import it.primoservlet.util.MyBatisUtils;

public class Test {

	public static void main(String[] args) {
		
	        try (SqlSession session = MyBatisUtils.getSqlSessionFactory().openSession(true)) {
	            UtenteMapper mapper = session.getMapper(UtenteMapper.class);
	            Utente u = mapper.findByEmail("fabi@pink.com");
	            System.out.println(u == null ? "Nessun utente" : u.getNome() + " " + u.getCognome());
	        }
	    }
	}


