/**
 * 
 */
package instance;

/**
 * @author 李煜峰
 *
 * date:Jul 12, 2018 time:3:48:10 PM
 */
public class Homework {
	private String homeworkid;
	private String homeworkdetails;
	private String homeworkanswer;
	private String courseid;
    private String Aanswer;
    private String Banswer;
    private String Canswer;
    private String Danswer;
    
    public Homework() {}
	/**
	 * @param homeworkid
	 * @param homeworkdetails
	 * @param homeworkanswer
	 * @param courseid
	 * @param aanswer
	 * @param banswer
	 * @param canswer
	 * @param danswer
	 */
	public Homework(String homewrokid, String homeworkdetails, String homeworkanswer, String courseid, String aanswer,
			String banswer, String canswer, String danswer) {
		super();
		this.homeworkid = homewrokid;
		this.homeworkdetails = homeworkdetails;
		this.homeworkanswer = homeworkanswer;
		this.courseid = courseid;
		Aanswer = aanswer;
		Banswer = banswer;
		Canswer = canswer;
		Danswer = danswer;
	}
	/**
	 * @return the aanswer
	 */
	public String getAanswer() {
		return Aanswer;
	}
	/**
	 * @param aanswer the aanswer to set
	 */
	public void setAanswer(String aanswer) {
		Aanswer = aanswer;
	}
	/**
	 * @return the banswer
	 */
	public String getBanswer() {
		return Banswer;
	}
	/**
	 * @param banswer the banswer to set
	 */
	public void setBanswer(String banswer) {
		Banswer = banswer;
	}
	/**
	 * @return the canswer
	 */
	public String getCanswer() {
		return Canswer;
	}
	/**
	 * @param canswer the canswer to set
	 */
	public void setCanswer(String canswer) {
		Canswer = canswer;
	}
	/**
	 * @return the danswer
	 */
	public String getDanswer() {
		return Danswer;
	}
	/**
	 * @param danswer the danswer to set
	 */
	public void setDanswer(String danswer) {
		Danswer = danswer;
	}
	/**
	 * @return the homewrokid
	 */
	public String getHomeworkid() {
		return homeworkid;
	}
	/**
	 * @param homewrokid the homewrokid to set
	 */
	public void setHomeworkid(String homeworkid) {
		this.homeworkid = homeworkid;
	}
	/**
	 * @return the homeworkdetails
	 */
	public String getHomeworkdetails() {
		return homeworkdetails;
	}
	/**
	 * @param homeworkdetails the homeworkdetails to set
	 */
	public void setHomeworkdetails(String homeworkdetails) {
		this.homeworkdetails = homeworkdetails;
	}
	/**
	 * @return the homeworkanwser
	 */
	public String getHomeworkanswer() {
		return homeworkanswer;
	}
	/**
	 * @param homeworkanwser the homeworkanwser to set
	 */
	public void setHomeworkanswer(String homeworkanswer) {
		this.homeworkanswer = homeworkanswer;
	}
	/**
	 * @return the courseid
	 */
	public String getCourseid() {
		return courseid;
	}
	/**
	 * @param courseid the courseid to set
	 */
	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}

}
