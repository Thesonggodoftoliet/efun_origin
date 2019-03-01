/**
 * 
 */
package dao;

import java.util.List;

import instance.Posts;
import instance.Replies;

/**
 * @author 李煜峰
 *
 * date:Jul 9, 2018 time:5:04:41 PM
 */
public interface RepliesDao {
	
	List <Replies> getAll();
	
	List <Replies> getRepliesByPostsId(String postsid);
	
	List <Replies> getRepliesByUserId(String userid);
	
	int getRepliesRows(Posts post);
	
	int insertReplies(Replies reply);
}
