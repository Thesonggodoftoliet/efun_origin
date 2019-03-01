/**
 * 
 */
package instance;

/**
 * @author 53564
 *
 * date:Jul 9, 2018 time:4:42:27 PM
 */
public class Replies {
	
	private String postsid;
	private String repliesid;//$(userid)+20180709155405
	private String repliesdetails;
	private String userid;
	private String repliestime;//2018-07-09 15:54:05
	
	public Replies(){}

	/**
	 * @param postsid
	 * @param repliesid
	 * @param repliesdetails
	 * @param userid
	 * @param repliestime
	 */
	public Replies(String postsid, String repliesid, String repliesdetails, String userid, String repliestime) {
		super();
		this.postsid = postsid;
		this.repliesid = repliesid;
		this.repliesdetails = repliesdetails;
		this.userid = userid;
		this.repliestime = repliestime;
	}

	/**
	 * @return the postsid
	 */
	public String getPostsid() {
		return postsid;
	}

	/**
	 * @param postsid the postsid to set
	 */
	public void setPostsid(String postsid) {
		this.postsid = postsid;
	}

	/**
	 * @return the repliesid
	 */
	public String getRepliesid() {
		return repliesid;
	}

	/**
	 * @param repliesid the repliesid to set
	 */
	public void setRepliesid(String repliesid) {
		this.repliesid = repliesid;
	}

	/**
	 * @return the repliesdetails
	 */
	public String getRepliesdetails() {
		return repliesdetails;
	}

	/**
	 * @param repliesdetails the repliesdetails to set
	 */
	public void setRepliesdetails(String repliesdetails) {
		this.repliesdetails = repliesdetails;
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
	 * @return the repliestime
	 */
	public String getRepliestime() {
		return repliestime;
	}

	/**
	 * @param repliestime the repliestime to set
	 */
	public void setRepliestime(String repliestime) {
		this.repliestime = repliestime;
	}
	
	

}
