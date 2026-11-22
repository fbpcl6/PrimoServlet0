//se non c’è nessuno in sessione manda al login,
//altrimenti mostra il profilo.
package it.primoservlet.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/ProfiloServlet")
public class ProfiloServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session == null || session.getAttribute("utente") == null) {
			response.sendRedirect("login.jsp");
			return;
		}
		request.getRequestDispatcher("profilo.jsp").forward(request, response);
		
		
	}
		
	
	

}
