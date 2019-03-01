package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import instance.Time;
import service.Service;

/**
 * Servlet implementation class Gettime
 */
@WebServlet("/Gettime")
public class Gettime extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Gettime() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		System.out.println(action);
		Service ser = new Service();
		Time time = new Time();
		HttpSession session = request.getSession();
		time.setUserid(session.getAttribute("id").toString());
		
		if("study".equals(action)) updateStudytime(request,response,ser,time);
		else if("login".equals(action)) updateLogintime(request,response,ser,time);
		else if("game".equals(action)) updateGametime(request,response,ser,time);
		else System.out.println("上传失败");
	}

	/**
	 * @param response 
	 * @param request 
	 * @param ser
	 * @param time 
	 */
	private void updateGametime(HttpServletRequest request, HttpServletResponse response, Service ser, Time time) {
		// TODO Auto-generated method stub
		long sss =Long.parseLong(request.getParameter("sss"));
		long sss1 = Long.parseLong(request.getParameter("sss1"));
		long seconds = (sss-sss1)/1000;
		long minutes = 0;
		long hours = 0;
		if(seconds>=60){
			minutes = seconds/60;
			seconds%=60;
		}
		
		if(minutes>=60){
			hours = minutes/60;
			minutes%=60;
		}
		System.out.println("时长"+hours+":"+minutes+":"+seconds);
		time.setGhour(hours);
		time.setGminute(minutes);
		time.setGsecond(seconds);
		ser.updateTime(time);
		
	}

	/**
	 * @param response 
	 * @param request 
	 * @param ser
	 * @param time 
	 */
	private void updateLogintime(HttpServletRequest request, HttpServletResponse response, Service ser, Time time) {
		// TODO Auto-generated method stub
		String date = request.getParameter("day");
		System.out.println("登陆时间"+date);
		time.setLogintime(date);
		ser.updateTime(time);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void updateStudytime(HttpServletRequest request, HttpServletResponse response, Service ser, Time time){
		long sss =Long.parseLong(request.getParameter("sss"));
		long sss1 = Long.parseLong(request.getParameter("sss1"));
		long seconds = (sss-sss1)/1000;
		long minutes = 0;
		long hours = 0;
		if(seconds>=60){
			minutes = seconds/60;
			seconds%=60;
		}
		
		if(minutes>=60){
			hours = minutes/60;
			minutes%=60;
		}
		System.out.println("时长"+hours+":"+minutes+":"+seconds);
		time.setHour(hours);
		time.setMinute(minutes);
		time.setSecond(seconds);
		System.out.println(time.getUserid());
		ser.updateTime(time);
	}

}
