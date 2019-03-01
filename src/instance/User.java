/**
 * User.java
 * @author
 * @version Jul 6, 20183:25:55 PM
 */
package instance;

/**
*@author 李煜峰
*@version 创建时间:Jul 6, 2018 3:25:55 PM
*
**/

/**
 * @author 53564
 *
 */
public class User {
	private String id;
	private String pwd;
	private String username;
	private String email;
	private String userlable;
	private String parentid;
	
	public User(){};
	
	public User(String id,String pwd,String username,String email,String userlable,String parentid){
		this.id = id;
		this.pwd = pwd;
		this.username = username;
		this.email = email;
		this.userlable = userlable;
		this.parentid = parentid;
	}
	

	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserlable() {
		return userlable;
	}

	public void setUserlable(String userlable) {
		this.userlable = userlable;
	}

	public String getParentid() {
		return parentid;
	}

	public void setParentid(String parentid) {
		this.parentid = parentid;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	public String toString(){
		
		String str = ("id"+id+" pwd"+pwd+" username"+username+" email"+email+" userlable"+userlable+" parentid"+parentid);
		return str;
		
	}

}
