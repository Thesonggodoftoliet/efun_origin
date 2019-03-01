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
import service.Service;

/**
 * Servlet implementation class question
 */
@WebServlet("/question")
public class question extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public question() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		   System.out.println("~~~~~~~~~~~question~~~~~~");
		   request.setCharacterEncoding("UTF-8");
		   response.setContentType("text/html");
		   response.setCharacterEncoding("UTF-8");
		   String coursename=request.getParameter("coursename");
		   String numString=request.getParameter("numString");
		   String index=request.getParameter("index");
	      
	       
	       HttpSession session = request.getSession();
	       String userid = session.getAttribute("id").toString();
	       Service service = new Service();
	     
	       
        String tempb = "";
        String tempid = coursename;
        if(numString.length()<3)
        {  
      	  for(int i=1;i<=3-numString.length();i++)
      	  {
      		  tempb+="0";
      	  }
      	  tempb+=numString;
      	numString=tempb;
        }
         tempid+=numString; 
         
         service.insertQuestion(tempid, index, userid);
         System.out.println(tempid);
         System.out.println(index);
         
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
