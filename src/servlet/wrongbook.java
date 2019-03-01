package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import instance.*;
import net.sf.json.JSONArray;
import service.*;
import java.util.*;


/**
 * Servlet implementation class wrongbook
 */
@WebServlet("/wrongbook")
public class wrongbook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public wrongbook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		   request.setCharacterEncoding("UTF-8");
		   response.setContentType("text/html");
		   response.setCharacterEncoding("UTF-8");
		   
		   List userwrong = new ArrayList();
		   Service service = new Service();
		   
		   HttpSession session = request.getSession();
	       String userid = session.getAttribute("id").toString();
		   
		   userwrong = service.getAllQuestion(userid);
		  
		   
		   JSONArray jsonArray2 = JSONArray.fromObject(userwrong);
		   System.out.println(jsonArray2);
		   PrintWriter out = response.getWriter();
		   out.print(jsonArray2);
		   request.setAttribute("jsonArray2", jsonArray2);  
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
