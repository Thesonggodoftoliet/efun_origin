/**
 * 
 */
package daoImpl;

import java.util.List;

import dao.QuestionDao;
import instance.Question;
import utils.JdbcUtils;

/**
 * @author 李煜峰
 *
 * date:Jul 14, 2018 time:9:22:07 AM
 */
public class QuestionDaoImpl implements QuestionDao {

	/**
	 * 
	 */
	public QuestionDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	/* (non-Javadoc)
	 * @see dao.QuestionDao#getAll(java.lang.String)
	 */
	@Override
	public List<Question> getAll(String userid) {
		// TODO Auto-generated method stub
		String sql = "select * from question where userid='"+userid+"'";
		return JdbcUtils.getList(Question.class, sql);
	}

	/* (non-Javadoc)
	 * @see dao.QuestionDao#getNumofstudent(java.lang.String)
	 */
	@Override
	public int getNumofstudent(String homeworkid) {
		// TODO Auto-generated method stub
		String sql = "select * from question where homeworkid='"+homeworkid+"'";
		return JdbcUtils.getListCount(sql);
	}

	/* (non-Javadoc)
	 * @see dao.QuestionDao#getNumofquestion(java.lang.String)
	 */
	@Override
	public int getNumofquestion(String userid) {
		// TODO Auto-generated method stub
		String sql = "select * from question where userid='"+userid+"'";
		return JdbcUtils.getListCount(sql);
	}

	/* (non-Javadoc)
	 * @see dao.QuestionDao#insertQuestion(instance.Question)
	 */
	@Override
	public int insertQuestion(Question question) {
		// TODO Auto-generated method stub
		String sql = "insert into question values(?,?,?)";
		return JdbcUtils.executeSQL(sql, question.getUserid(),question.getHomeworkid(),question.getWrongans());
	}

}
