package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Redirect
 */
@WebServlet("/Redirect")
public class Redirect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Redirect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		String action = request.getParameter("name");

		
		
		
		if(session.getAttribute("id") == null) {
			request.setAttribute("Isfirst", 1);
			request.getRequestDispatcher("/Login/login.jsp").forward(request, response);
		}
		else{
			
			if("toCourse".equals(action)){
				request.getRequestDispatcher("/coursepage/coursepage2.jsp").forward(request, response);
			}
			
			else if("toForum".equals(action)){
				request.getRequestDispatcher("Forum?name=getAll").forward(request, response);
			}
			
			else if("toPerson".equals(action)){
				request.getRequestDispatcher("Person").forward(request, response);
			}
			else if("toGame".equals(action)){
				request.getRequestDispatcher("/Games/Games.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			
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
