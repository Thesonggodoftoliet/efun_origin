/**
 * 
 */
package daoImpl;

import java.util.List;

import dao.CourseDao;
import instance.Course;
import utils.JdbcUtils;

/**
 * @author 53564
 *
 * date:Jul 9, 2018 time:10:37:32 AM
 */
public class CourseDaoImpl implements CourseDao {

	/* (non-Javadoc)
	 * @see dao.CourseDao#getAll()
	 */
	@Override
	public List<Course> getAll() {
		// TODO Auto-generated method stub
		String sql = "select * from course";
		return JdbcUtils.getList(Course.class, sql);
	}

	/* (non-Javadoc)
	 * @see dao.CourseDao#getCourseByGrade()
	 */
	@Override
	public List<Course> getCourseByGrade(String grade) {
		// TODO Auto-generated method stub
		String sql = "select * from course where labelage = '"+grade+"'";
		return JdbcUtils.getList(Course.class, sql);
	}

	/* (non-Javadoc)
	 * @see dao.CourseDao#getCourseBySubject()
	 */
	@Override
	public List<Course> getCourseBySubject(String subject) {
		// TODO Auto-generated method stub
		String sql = "select * from course where labelsubject = '"+subject+"'";
		return JdbcUtils.getList(Course.class, sql);
	}

	/* (non-Javadoc)
	 * @see dao.CourseDao#getCourseById(java.lang.String)
	 */
	@Override
	public Course getCourseById(String id) {
		// TODO Auto-generated method stub
		String sql = "select * from course where courseid = ?";
		return (Course)JdbcUtils.getObjectById(Course.class, sql, id);
	}

	/* (non-Javadoc)
	 * @see dao.CourseDao#insertCourse(instance.Course)
	 */
	@Override
	public int insertCourse(Course course) {
		// TODO Auto-generated method stub
		String sql = "insert into course values(?,?,?,?,?,?,?,?,?)";
		return JdbcUtils.executeSQL(sql, course.getCourseid(),course.getLabelage(),course.getLabelsubject(),course.getUpdatetime(),course.getVideopath(),course.getCoursename(),course.getCourseinfo(),course.getHomeworkpath(),course.getPhotopath());
	}

}
