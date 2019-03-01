/**
 * 
 */
package instance;

/**
 * @author 53564
 *
 * date:Jul 9, 2018 time:4:35:57 PM
 */
public class Posts {
	
	private String postsid;//$(userid)+20180709164605
	private String poststitle;
	private String postsdetails;
	private String userid;
	private String poststime;//2018-07-09 16:46:05
	
	public Posts(){}
	
	public Posts(String postsid, String poststitle, String postsdetails, String userid, String poststime) {
		super();
		this.postsid = postsid;
		this.poststitle = poststitle;
		this.postsdetails = postsdetails;
		this.userid = userid;
		this.poststime = poststime;
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
	 * @return the poststitle
	 */
	public String getPoststitle() {
		return poststitle;
	}

	/**
	 * @param poststitle the poststitle to set
	 */
	public void setPoststitle(String poststitle) {
		this.poststitle = poststitle;
	}

	/**
	 * @return the postsdetails
	 */
	public String getPostsdetails() {
		return postsdetails;
	}

	/**
	 * @param postsdetails the postsdetails to set
	 */
	public void setPostsdetails(String postsdetails) {
		this.postsdetails = postsdetails;
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
	 * @return the poststime
	 */
	public String getPoststime() {
		return poststime;
	}

	/**
	 * @param poststime the poststime to set
	 */
	public void setPoststime(String poststime) {
		this.poststime = poststime;
	}

	
}
