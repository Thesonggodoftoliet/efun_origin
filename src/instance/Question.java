/**
 * 
 */
package instance;

/**
 * @author 李煜峰
 *
 * date:Jul 14, 2018 time:9:16:22 AM
 */
public class Question {

	private String userid;
	private String homeworkid;
	private String wrongans;
	/**
	 * 
	 */
	public Question() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param userid
	 * @param homeworkid
	 * @param wrongans
	 */
	public Question(String userid, String homeworkid, String wrongans) {
		super();
		this.userid = userid;
		this.homeworkid = homeworkid;
		this.wrongans = wrongans;
	}
	/**
	 * @return the userid
	 */
	public String getUserid() {
		return userid;
	}
	/**
	 * @param userid the userid to set
	 */
	public void setUserid(String userid) {
		this.userid = userid;
	}
	/**
	 * @return the homeworkid
	 */
	public String getHomeworkid() {
		return homeworkid;
	}
	/**
	 * @param homeworkid the homeworkid to set
	 */
	public void setHomeworkid(String homeworkid) {
		this.homeworkid = homeworkid;
	}
	/**
	 * @return the wrongans
	 */
	public String getWrongans() {
		return wrongans;
	}
	/**
	 * @param wrongans the wrongans to set
	 */
	public void setWrongans(String wrongans) {
		this.wrongans = wrongans;
	}
	

}
