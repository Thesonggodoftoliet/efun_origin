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

/**
 * Servlet implementation class Video
 */
public class Video extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Video() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		//System.out.println("coming");
		//String video_url = request.getParameter("video");
		//String video_txt = request.getParameter("TXT");
		//String courseMsg = Service.getcourseMsg();
		//out.print("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
		String courseid = request.getParameter("cousreid");
		Course course = new Course();
		course.setCourseid(courseid);
		Service ser = new Service();
		Course recourse = ser.getCourseById(course);
		out.print(recourse.getCourseinfo());
		out.flush();
		out.close();
	}

	/**
	 * @param courseid
	 */
	private void getCourseById(String courseid) {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
