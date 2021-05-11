package gameManager;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FindByGenreServlet
 */
@WebServlet("/Genre")
public class FindByGenreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindByGenreServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    static GiocoDAO gameModel = new GiocoDAO();
    
   	/**
   	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   	 */
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		
   	try {
   		request.removeAttribute("action_name");
		request.getSession().removeAttribute("giochi");	
		String genere = request.getParameter("gen");
		ArrayList<Gioco> app=gameModel.findByGenre(genere);
		request.setAttribute("action_name", "Ricerca per genere: "+genere);
		request.getSession().setAttribute("giochi", app);	
   		
   		} catch (SQLException e) {
   			e.printStackTrace();
   		}	
   	
   	
   	RequestDispatcher dispatcher;
   	dispatcher = getServletContext().getRequestDispatcher("/catalogo.jsp");
   	
   	dispatcher.forward(request, response);
   	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}