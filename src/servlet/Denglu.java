package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import instance.User;
import service.Service;

/**
 * Servlet implementation class Denglu
 */
/**
 * @author shangyigeng
 * @day 2018-7-6
 */
/**
 * Servlet implementation class Login
 */

public class Denglu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Denglu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		
		Service ser = new Service();
		User user = new User();
		
		user.setId(request.getParameter("UserID"));//将请求中的ID号存入string userID
		user.setPwd(request.getParameter("UserPSW"));//将请求中的password存入
		
		if(ser.checkId(user)){
			User tuser=ser.checkuser(user);
			System.out.println(tuser.getUsername());
			if(tuser != null)
			{
				HttpSession session=request.getSession();
				session.setAttribute("id",tuser.getId());
				request.setAttribute("User",tuser);
				
				request.getRequestDispatcher("/coursepage/coursepage2.jsp").forward(request, response);//跳转到登录成功页面
			}
			else{
				request.setAttribute("IsPwdright", 1);
				request.getRequestDispatcher("/Login/login.jsp").forward(request, response);//跳转到登录错误页面
			}
				
		}
		
		else{
			request.setAttribute("IsIdexist", 1);
			request.getRequestDispatcher("/Regist/regist.jsp").forward(request, response);
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
