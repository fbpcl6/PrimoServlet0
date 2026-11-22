package it.primoservlet.servlet;
// cerca l’utente per email, confronta la password e,
//se è giusta, lo mette in sessione.

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

@WebServlet("/LoginServlet")
public class LoginServlet  extends HttpServlet{

	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Utente utente;
		
		try(SqlSession session = MyBatisUtils.getSqlSessionFactory().openSession(true)){
			
			UtenteMapper mapper = session.getMapper(UtenteMapper.class);
			utente = mapper.findByEmail(email);
		}
		
		if(utente != null &&  utente.getPassword().equals(password)) {
			request.getSession().setAttribute("utente", utente);
			response.sendRedirect("profilo.jsp");			
		}else {
			
			request.setAttribute("Errore", "Errore: Email o Pasword non corretti");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		
		request.getRequestDispatcher("/profilo.jsp").forward(request, response);
		
		
	}
}
