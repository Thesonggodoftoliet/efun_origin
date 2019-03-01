package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import daoImpl.UserDaoImpl;
import instance.Course;
import instance.Posts;
import instance.Replies;
import instance.User;
import net.sf.json.JSONArray;
import service.Service;

/**
 * Servlet implementation class Forum
 */
public class Forum_posts extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Forum_posts() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");

		String postsid = request.getParameter("id");
		String action = request.getParameter("name");

		System.out.println("恭喜你" + action);

		Service ser = new Service();
		// HttpSession session1=request.getSession();
		// String id = session1.getAttribute("id").toString();
		// System.out.println("我是session获取的"+id);

		if ("getAll".equals(action)) {
			System.out.println("跳转到了GETALL函数");
			getAll(request, response, ser);
		} else if ("getDetails".equals(action)) {
			System.out.println("跳转到了getDetails");
			getDetails(request, response, ser, postsid);
		} else if ("reply".equals(action)) {
			System.out.println("跳转到了reply");
			reply(request, response, postsid);
		} else if ("replies".equals(action)) {
			System.out.println("跳转到了replies");
			replies(request, response, ser, postsid);
		} else if ("posts".equals(action)) {
			System.out.println("跳转到了posts");
			System.out.println(request.getParameter("title"));
			System.out.println(request.getParameter("message"));
			posts(request,response,ser);
			
		} else {
			System.out.println("没有跳转到了GETALL函数");
		}

	}

	/**
	 * @param request
	 * @param response
	 * @param ser
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void posts(HttpServletRequest request, HttpServletResponse response, Service ser) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String title = request.getParameter("title");
		String message = request.getParameter("message");
		HttpSession session1 = request.getSession();
		String id = session1.getAttribute("id").toString();
		java.util.Date time = new java.util.Date();
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMddHHmmss");
		String date = sdf2.format(time);
		
		Posts post = new Posts();
		post.setPostsid(id+date);
		post.setUserid(id);
		post.setPoststitle(title);
		post.setPostsdetails(message);
		post.setPoststime(sdf1.format(time));
		
		int tag=ser.Post(post);
		if(tag!=0){
				getAll(request,response,ser);
		}
		
		else{
			
		}
		
	}

	/**
	 * @param request
	 * @param response
	 * @param ser
	 * @param postsid
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void replies(HttpServletRequest request, HttpServletResponse response, Service ser, String postsid) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String detailes = request.getParameter("message");
		System.out.println(detailes);
		HttpSession session1 = request.getSession();
		String id = session1.getAttribute("id").toString();
		System.out.println(id);
		java.util.Date time = new java.util.Date();
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMddHHmmss");
		String date = sdf2.format(time);
		Replies reply = new Replies();
		reply.setPostsid(postsid);
		reply.setRepliesid(id + date);
		reply.setUserid(id);
		reply.setRepliesdetails(detailes);;
		reply.setRepliestime(sdf1.format(time));
		int tag=ser.Reply(reply);
		if(tag!=0){
				getDetails(request,response,ser,postsid);
		}
		
		else{
			
		}
	}

	/**
	 * @param request
	 * @param response
	 * @param ser
	 * @param postsid
	 * @throws IOException
	 * @throws ServletException
	 */
	private void reply(HttpServletRequest request, HttpServletResponse response, String postsid)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("postsid", postsid);
		request.getRequestDispatcher("/Forum/Forum_Replies.jsp").forward(request, response);

	}

	private void getAll(HttpServletRequest request, HttpServletResponse response, Service ser)
			throws ServletException, IOException {

		List<Posts> posts = ser.getPostsList();
		int tag = ser.getPostsRows();
		System.out.println("一共有" + tag);
		String userid = null;
		List<User> users = new ArrayList();
		List<Integer> total = new ArrayList();
		for (int i = 0; i < tag; ++i) {
			userid = posts.get(i).getUserid();
			users.add(ser.getUserInfoById(userid));
			System.out.println(ser.getUserInfoById(userid).toString());
			total.add(ser.getRepliesRows(posts.get(i)));
			System.out.println("我有" + total.get(i));
		}
		request.setAttribute("posts", posts);
		request.setAttribute("users", users);
		request.setAttribute("total", total);
		request.getRequestDispatcher("/Forum/Forum.jsp").forward(request, response);
	}

	private void getDetails(HttpServletRequest request, HttpServletResponse response, Service ser, String postsid)
			throws ServletException, IOException {

		System.out.println("我是页面获取的" + postsid);
		Posts post = new Posts();
		post = ser.getPostsInfoById(postsid);
		List<Replies> replies = ser.getRepliesList(post);
		int tag = ser.getRepliesRows(post);
		List<User> users = new ArrayList();
		String userid = null;
		for (int i = 0; i < tag; ++i) {
			userid = replies.get(i).getUserid();
			users.add(ser.getUserInfoById(userid));
			System.out.println(ser.getUserInfoById(userid).toString());
		}

		request.setAttribute("replies", replies);
		request.setAttribute("users", users);
		request.setAttribute("postsid", postsid);
		request.getRequestDispatcher("/Forum/Forum_details.jsp").forward(request, response);

	}

}
