package servlet;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONArray;
import service.Service;
import instance.Course;
import java.util.*;
import java.text.SimpleDateFormat;

/**
 * Servlet implementation class textServlet
 */
//@WebServlet("/textServlet")
public class CourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CourseServlet() {
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
	       String name=request.getParameter("name");
	       System.out.println("-------");
//	       java.util.Date time = new java.util.Date();
//	       SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//	       String date = sdf2.format(time);
//	       System.out.println("----------"+date);
//	       Course tempcourse3 = new Course();
//	       Course tempcourse = new Course("34001","三年级", "科学", date, "/videoAll/hubei.mp4", "math_three","这是一门神奇的学科","null","/coursepage/images/4.jpg");
//	       Course tempcourse2 = new Course("43001","四年级", "数学", date, "/videoAll/hubei.mp4", "三年级数学","这是一门神奇的学科","null","/coursepage/images/15.jpg");
//	       
	       Service courseservice = new Service();
		   List<Course> courselist = courseservice.getCourseList(name);
		   
		  
		   JSONArray jsonArray2 = JSONArray.fromObject(courselist);
		   System.out.println(jsonArray2);
		   PrintWriter out = response.getWriter();
		   out.print(jsonArray2);
		   request.setAttribute("jsonArray2", jsonArray2);
	       
         //  request.getRequestDispatcher("/coursepage/coursepage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
