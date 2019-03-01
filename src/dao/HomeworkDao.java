/**
 * 
 */
package dao;

import java.util.List;

import instance.Course;
import instance.Homework;

/**
 * @author 李煜峰
 *
 * date:Jul 12, 2018 time:3:47:33 PM
 */
public interface HomeworkDao {
	List <Homework> getHomeworkBycourseId(Course course);
	
	Homework getHomeworkByHomeworkId(Homework homework);
	
	int insertHomework(Homework homework);
	
	int getHomeworkRows(Course course);
}
