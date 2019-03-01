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
 * Servlet implementation class zhuceser
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("nihao");
		String username = request.getParameter("username");  //用户名称
		String email = request.getParameter("email"); //用户邮件，已经在jsp里面正则表达式判断了
		String pwd = request.getParameter("pwd");// 两个密码进行了判断，同时在jsp里面已经正则表达式判断了，6-16位 英文和数字
		String userlable = request.getParameter("userlable"); //  要么是学生要么是家长 0 or 1
		
		User zhuceUser = new User();
		zhuceUser.setEmail(email);
		zhuceUser.setPwd(pwd);
		zhuceUser.setUserlable(userlable);
		zhuceUser.setUsername(username);
		
		Service userService = new Service();   
		zhuceUser=userService.Zhuce(zhuceUser);
		if(zhuceUser == null)
		{
			System.out.println("失败");
			request.getRequestDispatcher("/Regist/regist.jsp").forward(request, response);
			 /*失败，再来一次注册*/
		}
		else 
		{ 

			System.out.println("成功");
			HttpSession session=request.getSession();
			session.setAttribute("id",zhuceUser.getId());
			request.setAttribute("user", zhuceUser);
	      	request.getRequestDispatcher("Person").forward(request, response);
	      	/*注册成功，*/
	      	/*
	      	 *  Success 页面  可以 User user = (User) request.getAttribute("user")  
	      	 *  调用servlet的注册成功的user，然后给用户显示一下他的ID 让它记住哒
	      	 * 
	      	 * */
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
