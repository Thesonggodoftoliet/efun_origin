/**
 * 
 */
package daoImpl;

import java.util.List;

import dao.HomeworkDao;
import instance.Course;
import instance.Homework;
import utils.JdbcUtils;

/**
 * @author 李煜峰
 *
 * date:Jul 12, 2018 time:3:55:21 PM
 */
public class HomeworkDaoImpl implements HomeworkDao {

	/* (non-Javadoc)
	 * @see dao.HomeworkDao#getHomeworkBycourseId(instance.Course)
	 */
	@Override
	public List<Homework> getHomeworkBycourseId(Course course) {
		// TODO Auto-generated method stub
		String sql = "select * from homework where courseid = '"+course.getCourseid()+"'";
		return JdbcUtils.getList(Homework.class, sql);
	}

	/* (non-Javadoc)
	 * @see dao.HomeworkDao#getHomeworkByHomeworkId(instance.Homework)
	 */
	@Override
	public Homework getHomeworkByHomeworkId(Homework homework) {
		// TODO Auto-generated method stub
		String sql = "select * from homework where homeworkid =?";
		return (Homework)JdbcUtils.getObjectById(Homework.class, sql, homework.getHomeworkid());
	}

	/* (non-Javadoc)
	 * @see dao.HomeworkDao#insertHomework(instance.Homework)
	 */
	@Override
	public int insertHomework(Homework homework) {
		// TODO Auto-generated method stub
		String sql = "insert into homework values(?,?,?,?,?,?,?,?)";
		return JdbcUtils.executeSQL(sql, homework.getHomeworkid(),homework.getHomeworkdetails(),homework.getHomeworkanswer(),homework.getCourseid(),homework.getAanswer(),homework.getBanswer(),homework.getCanswer(),homework.getDanswer());
	}


	/* (non-Javadoc)
	 * @see dao.HomeworkDao#getHomeworkRows(instance.Homework)
	 */
	@Override
	public int getHomeworkRows(Course course) {
		// TODO Auto-generated method stub
		String sql = "select * from homework where courseid = '"+course.getCourseid()+"'";
		return JdbcUtils.getListCount(sql);
	}

}
