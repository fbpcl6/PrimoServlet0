//Legge i dati, controlla che l’email non esista già, salva e manda al login
package it.primoservlet.servlet;

import java.io.IOException;

import org.apache.ibatis.session.SqlSession;

import it.primoservlet.mapper.UtenteMapper;
import it.primoservlet.model.Utente;
import it.primoservlet.util.MyBatisUtils;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegistrazioneServlet")
public class RegistrazioneServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException,IOException {
		
		Utente model = new Utente();
		model.setNome(request.getParameter("nome"));
		model.setCognome(request.getParameter("cognome"));
		model.setEmail(request.getParameter("email"));
		model.setPassword(request.getParameter("password"));
		
		try(SqlSession session= MyBatisUtils.getSqlSessionFactory().openSession(true)){
				UtenteMapper mapper = session.getMapper(UtenteMapper.class);
				
		if(mapper.findByEmail(model.getEmail())!= null){
			request.setAttribute("errore", "email già registrata");
			request.getRequestDispatcher("registrazione.jsp").forward(request, response);
			return;
		}
		mapper.insert(model);
		}
		response.sendRedirect("login.jsp");
	}
	

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException,IOException {
	request.getRequestDispatcher("registrazione.jsp").forward(request, response);
	}
	
		
	}

