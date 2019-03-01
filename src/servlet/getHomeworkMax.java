package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import instance.Course;
import service.Service;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class getHomeworkMax
 */
@WebServlet("/getHomeworkMax")
public class getHomeworkMax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getHomeworkMax() {
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
		   
		   Service service = new Service();
		   Course course = new Course();
		   course.setCourseid(courseid);
		   int nummax=service.getHomeworkMax(course);
		   
		   JSONArray jsonArray2 = JSONArray.fromObject(nummax);
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
