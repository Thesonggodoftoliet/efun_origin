package servlet;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import instance.Course;
import service.Service;

/**
 * Servlet implementation class startClass
 */

public class startClass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public startClass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Course cour = new Course();//建立一个课程对象
		cour.setCourseid(request.getParameter("courseid"));//从课程列表界面的点击链接传来的命令中读取点击的课程id
		//cour.setCourseid("43001");
		Service ser = new Service();//创建service对象调用service方法
		Course recour = ser.getCourseById(cour);//用cour作为模式在数据库中查询对应的课程的信息，返回的对象存储在recour之中
		//Course recour=new Course();
//		recour.courseid="study!";
//		recour.courseinfo="aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
//		recour.videopath="video/test.mp4";
		
	if(recour!=null)
	{
			request.setAttribute("Course", recour);//将recour的信息存储在Course流对象中
			System.out.println(recour.getVideopath());
			request.getRequestDispatcher("PLAYER/events2.jsp").forward(request, response);//重定向到播放页面之中
		}
		else
		{
			request.getRequestDispatcher("Login_Fail.html").forward(request, response);//
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
