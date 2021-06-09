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
 * Servlet implementation class GamePageServlet
 */
@WebServlet("/GamePage")
public class GamePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GamePageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    static GiocoDAO gameModel = new GiocoDAO();
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
				request.removeAttribute("game");
				String gameID = request.getParameter("id");
				System.out.println("Gioco "+gameID);
				RequestDispatcher dispatcher;
				Gioco app=gameModel.findGameById(Integer.parseInt(gameID));
				if(app!=null) {
					request.setAttribute("game", app);
					response.getWriter().write(app.getNome());//test
					dispatcher = request.getRequestDispatcher("/pagina-gioco.jsp");
					dispatcher.forward(request, response);
				}
				else {
					response.getWriter().write("errore");//test
					dispatcher = request.getRequestDispatcher("/index.jsp");
					dispatcher.forward(request, response);
				}
				
				
			} catch (SQLException e) {
				response.getWriter().write("errore SQL");//test
				e.printStackTrace();
			}	
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
