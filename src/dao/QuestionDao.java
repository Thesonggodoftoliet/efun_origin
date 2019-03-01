/**
 * 
 */
package dao;

import java.util.List;

import instance.Question;

/**
 * @author 李煜峰
 *
 * date:Jul 14, 2018 time:9:18:39 AM
 */
public interface QuestionDao {
	
	List<Question> getAll(String userid);
	
	int getNumofstudent(String homeworkid);
	
	int getNumofquestion(String userid);
	
	int insertQuestion(Question question);

}
