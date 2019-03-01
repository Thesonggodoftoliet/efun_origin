package service;

import java.util.List;

import dao.CourseDao;
import dao.PostsDao;
import dao.RepliesDao;
import dao.TimeDao;
import dao.UserDao;
import daoImpl.CourseDaoImpl;
import daoImpl.HomeworkDaoImpl;
import daoImpl.PostsDaoImpl;
import daoImpl.QuestionDaoImpl;
import daoImpl.RepliesDaoImpl;
import daoImpl.TimeDaoImpl;
import daoImpl.UserDaoImpl;
import instance.Course;
import instance.Homework;
import instance.Posts;
import instance.Question;
import instance.Replies;
import instance.Time;
import instance.User;
import serviceinterface.ServiceInfa;

public class Service implements ServiceInfa {
	public User Zhuce(User user) {
		UserDaoImpl zhuceDao = new UserDaoImpl(); // 关于用户表的dao
		int rows = zhuceDao.GetMaxRows(); // 调用数据库用户表的行数
		String temprows = Integer.toString(rows);
		int Numrows = temprows.length(); // rows 的 位数
		String s = "";
		for (int i = 1; i <= 6 - Numrows; i++) {
			s = s + "0";
		}
		s += temprows;

		user.setId(s); // 用户的ID为行数+1

		int info = -1;
		info = zhuceDao.InsertUser(user);
		/* 向用户表中插入该用户的信息。 info有两个值，1 表示插入成功 , -1表示插入失败 */
		if (info == 1)
			return user;
		else
			return null;

	}

	public User checkuser(User tuser) {
		UserDaoImpl userDao = new UserDaoImpl();
		User user = userDao.GetByid(tuser.getId());
		boolean tag = user.getPwd().equals(tuser.getPwd());
		System.out.println("用户标识："+user.getUserlable());
		if ("0".equals(user.getUserlable()))
			if (tag)
				return user;
		
		if("1".equals(user.getUserlable())){
			if(tag){
				System.out.println(tuser);
				if(userDao.GetByid(user.getParentid())!=null){
				System.out.println("成功了");
				User childuser = userDao.GetByid(user.getParentid());
				return childuser;
				}
				else {
					System.out.println("没有");
					return user;
				}
			}
		}

		return null;

	}

	public List<Posts> getPostsList() {
		PostsDaoImpl postDao = new PostsDaoImpl();

		return postDao.getAll();
	}

	public List<Course> getCourseList(String str) {
		CourseDaoImpl coursedao = new CourseDaoImpl();
		return coursedao.getAll();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see service.ZhuceService#getUserInfoById(java.lang.String)
	 */
	@Override
	public User getUserInfoById(String id) {
		// TODO Auto-generated method stub
		UserDao userdao = new UserDaoImpl();
		User user = new User();
		user = userdao.GetByid(id);
		return user;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see service.ZhuceService#getPostsRows()
	 */
	@Override
	public int getPostsRows() {
		// TODO Auto-generated method stub
		PostsDao postsdao = new PostsDaoImpl();
		return postsdao.getPostsRows();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see service.ZhuceService#getRepliesRows(instance.Posts)
	 */
	@Override
	public int getRepliesRows(Posts post) {
		// TODO Auto-generated method stub
		RepliesDao rd = new RepliesDaoImpl();
		return rd.getRepliesRows(post);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see serviceinterface.ServiceInfa#getRepliesList(instance.Posts)
	 */
	@Override
	public List<Replies> getRepliesList(Posts post) {
		// TODO Auto-generated method stub
		RepliesDao rd = new RepliesDaoImpl();
		return rd.getRepliesByPostsId(post.getPostsid());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see serviceinterface.ServiceInfa#getPostsInfoById(java.lang.String)
	 */
	@Override
	public Posts getPostsInfoById(String postsid) {
		// TODO Auto-generated method stub
		PostsDao postsdao = new PostsDaoImpl();
		return postsdao.getPostByPostsId(postsid);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see serviceinterface.ServiceInfa#getCourseById(instance.Course)
	 */
	@Override
	public Course getCourseById(Course course) {
		CourseDao coursedao = new CourseDaoImpl();

		return coursedao.getCourseById(course.getCourseid());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see serviceinterface.ServiceInfa#Reply(instance.Replies)
	 */
	@Override
	public int Reply(Replies reply) {
		// TODO Auto-generated method stub
		RepliesDaoImpl repliesDao = new RepliesDaoImpl();
		return repliesDao.insertReplies(reply);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see serviceinterface.ServiceInfa#Post(instance.Posts)
	 */
	@Override
	public int Post(Posts post) {
		// TODO Auto-generated method stub
		PostsDao postsdao = new PostsDaoImpl();
		return postsdao.insertPosts(post);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see serviceinterface.ServiceInfa#checkId(instance.User)
	 */
	@Override
	public boolean checkId(User tuser) {
		// TODO Auto-generated method stub
		UserDaoImpl userDao = new UserDaoImpl();
		User user = userDao.GetByid(tuser.getId());

		if (user != null)
			return true;
		else
			return false;
	}

	public Homework getHomework(Homework thome) {
		HomeworkDaoImpl homeDao = new HomeworkDaoImpl();
		return homeDao.getHomeworkByHomeworkId(thome);

	}

	public int getHomeworkMax(Course course) {
		HomeworkDaoImpl homeDao = new HomeworkDaoImpl();
		return homeDao.getHomeworkRows(course);
	}

	public int insertQuestion(String homeworkid, String index, String userid) {
		Homework thome = new Homework();
		thome.setHomeworkid(homeworkid);
		Homework curhome = this.getHomework(thome);
		Question ques = new Question();
		ques.setHomeworkid(homeworkid);
		if (index.equals("0"))
			ques.setWrongans(curhome.getAanswer());
		else if (index.equals("1"))
			ques.setWrongans(curhome.getBanswer());
		else if (index.equals("2"))
			ques.setWrongans(curhome.getCanswer());
		else
			ques.setWrongans(curhome.getDanswer());
		ques.setUserid(userid);

		QuestionDaoImpl quedao = new QuestionDaoImpl();
		return quedao.insertQuestion(ques);

	}

	public List<Question> getAllQuestion(String userid) {
		QuestionDaoImpl quesdao = new QuestionDaoImpl();
		return quesdao.getAll(userid);
	}

	public Homework getSpeHomework(Homework homework) {
		HomeworkDaoImpl homedao = new HomeworkDaoImpl();
		return homedao.getHomeworkByHomeworkId(homework);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see serviceinterface.ServiceInfa#insertTime(instance.Time)
	 */
	@Override
	public int updateTime(Time time) {
		// TODO Auto-generated method stub
		TimeDao timedao = new TimeDaoImpl();
		System.out.println("service"+time.getUserid()+time.getMinute());
		if (timedao.getTimeByUserid(time.getUserid()) != null) {
			
			Time ttime = timedao.getTimeByUserid(time.getUserid());
			System.out.println("service"+ttime.getUserid()+ttime.getMinute());
			if (time.getLogintime() == null) {//没有上传Logintime
				time.setLogintime(ttime.getLogintime());
			}
			if (time.getHour() == 0) {
				time.setHour(ttime.getHour());
			} else {
				long hour = time.getHour() + ttime.getHour();
				time.setHour(hour);
			}

			if (time.getMinute() == 0) {
				time.setMinute(ttime.getMinute());
			} else {
				long minute = time.getMinute() + ttime.getMinute();
				if(minute>=60){
					time.setHour(ttime.getHour()+minute/60);
					time.setMinute(minute%60);
				}
				else time.setMinute(minute);
			}
			
			if(time.getSecond()==0){
				time.setSecond(ttime.getSecond());
			}else{
				long second = time.getSecond()+ttime.getSecond();
				if(second>=60){
					time.setMinute(ttime.getMinute()+second/60);
					time.setSecond(second%60);
				}
				else time.setSecond(second);
			}

			if (time.getGhour() == 0) {
				time.setGhour(ttime.getGhour());
			} else {
				long ghour = time.getGhour() + ttime.getGhour();
				time.setGhour(ghour);
			}

			if (time.getGminute() == 0) {
				time.setGminute(ttime.getGminute());
			} else {
				long gminute = time.getGminute() + ttime.getGminute();
				if(gminute>=60){
					time.setGhour(ttime.getGhour()+gminute/60);
					time.setGminute(gminute%60);
				}
				else time.setGminute(gminute);
			}
			
			if(time.getGsecond()==0){
				time.setGsecond(ttime.getGsecond());
			}else{
				long gsecond = time.getGsecond()+ttime.getGsecond();
				if(gsecond>=60){
					time.setGminute(ttime.getGminute()+gsecond/60);
					time.setGsecond(gsecond%60);
				}
				else time.setGsecond(gsecond);
			}

			return timedao.updateTime(time);
		} else
			return timedao.insertTime(time);
	}

	/* (non-Javadoc)
	 * @see serviceinterface.ServiceInfa#getTimeById(java.lang.String)
	 */
	@Override
	public Time getTimeById(String userid) {
		// TODO Auto-generated method stub
		Time time = new Time();
		TimeDao timedao = new TimeDaoImpl();
		time = timedao.getTimeByUserid(userid);
		return time;
	}
}
