package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import instance.Homework;
import service.Service;

/**
 * Servlet implementation class spequestion
 */
@WebServlet("/spequestion")
public class spequestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public spequestion() {
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
	       String homeworkid=request.getParameter("homeworkid");
	       System.out.println("------------"+homeworkid);
	       
	       Homework thome = new Homework();
	       thome.setHomeworkid(homeworkid);
	       
	       Service service = new Service();
	       Homework curhomework = service.getSpeHomework(thome);
	       System.out.println(curhomework.getAanswer()+curhomework.getBanswer());
	       
	       request.setAttribute("homework", curhomework);
	       request.getRequestDispatcher("wrongbook/wrongbook.jsp").forward(request, response);//重定向到播放页面之中
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
