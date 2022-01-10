package servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ConducteurDao;
import Model.Conducteur;







/**
 * Servlet implementation class Conducteur
 */
@WebServlet("/conducteur")
public class ConducteurServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConducteurServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ConducteurDao cond = new ConducteurDao();
		request.setAttribute("conducteurs", cond.read());
		//System.out.println(cond.read());
		request.getRequestDispatcher("View/Conducteur.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Long id = Long.parseLong( request.getParameter("id"));
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		
		ConducteurDao condACreer = new ConducteurDao();
		Conducteur cond = new Conducteur(nom, prenom, email, tel);
		
		request.setAttribute("nom", nom);
		request.setAttribute("prenom", prenom);
		request.setAttribute("email", email);
		request.setAttribute("tel", tel);
		
		
		request.setAttribute("ajout", condACreer.create(cond));
		
		doGet(request, response);
		request.getRequestDispatcher("View/Conducteur.jsp").forward(request, response);
		
	}
}
