/**
 * UserDao.java
 * @author
 * @version Jul 6, 20183:23:09 PM
 */
package dao;

import java.util.List;

import instance.User;

/**
*@author 李煜峰
*@version 创建时间:Jul 6, 2018 3:23:09 PM
*
**/

/**
 * @author 53564
 *
 */
public interface UserDao {
	
	List<User> getAll();
	
	User GetByid(String id);
	
	User GetByemail(String email);
	
	int UpdateUsername(User user);
	
	int InsertUser(User user);
	
	int GetMaxRows();
}
