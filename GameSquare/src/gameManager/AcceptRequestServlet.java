package gameManager;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AcceptRequestServlet
 */
@WebServlet("/AcceptReq")
public class AcceptRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AcceptRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    static RichiestaGiocoDAO model = new RichiestaGiocoDAO();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
		String reqID = request.getParameter("reqid");
		System.out.println("ricevuta richiesta aggiunta id: "+reqID);
		RichiestaGioco app;
		app = model.viewRequestById(Integer.parseInt(reqID));
		Gioco g = new Gioco(app.getNomeGioco(), "Questo gioco � stato aggiunto al sito su suggerimento di: "+app.getUsernameUtente(), app.getPublisher(), app.getAnno(), app.getGenere());
		g.setPunteggio(100);
		g.setImgpath("img/Games/placeholder");
		g.setMediaVoti(0);
		System.out.println(g.toString());
		//GiocoDAO gameModel = new GiocoDAO();
			if(GiocoDAO.addGame(g))
				RichiestaGiocoDAO.deleteGameRequest(app.getIdRichiesta());
			} catch (SQLException e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
