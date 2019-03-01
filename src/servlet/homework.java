package servlet;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.*;
import instance.*;
import net.sf.json.JSONArray;
import service.*;

/**
 * Servlet implementation class homework
 */
@WebServlet("/homework")
public class homework extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public homework() {
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
		   String courseid=request.getParameter("coursename");
		   String numString=request.getParameter("numString");
	       System.out.println("-------");
	       
//	       HttpSession session = request.getSession();
//	       String youwangtoget = session.getAttribute("yousetdename".toString());
	     
          String tempb = "";
          String tempid = courseid;
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
           System.out.println(tempid);
           
           Service service = new Service();
           Homework tempHomework = new Homework();
           tempHomework.setHomeworkid(tempid);
           tempHomework.setCourseid(courseid);
           Homework thomework = service.getHomework(tempHomework);
           
           JSONArray jsonArray2 = JSONArray.fromObject(thomework);
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
