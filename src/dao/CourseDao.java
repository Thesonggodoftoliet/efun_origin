/**
 * 
 */
package dao;

import java.util.List;

import instance.Course;

/**
 * @author 53564
 *
 * date:Jul 9, 2018 time:10:05:33 AM
 */
public interface CourseDao {
	List<Course> getAll();//获取所有课程
	
	List<Course> getCourseByGrade(String grade);//通过年级查找课程
	
	List<Course> getCourseBySubject(String subject);//通过科目查找课程
	
	Course getCourseById(String id);//通过id查找单个课程
	
	int insertCourse(Course course);//向数据库中插入课程
	
}
