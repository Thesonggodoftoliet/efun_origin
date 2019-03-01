/**
 * 
 */
package dao;

import java.util.List;

import instance.Posts;

/**
 * @author 李煜峰
 *
 * date:Jul 9, 2018 time:4:50:55 PM
 */

public interface PostsDao {
	
	List <Posts> getAll();
	
	List <Posts> getPostsByUserid(String userid);
	
	Posts getPostByPostsId(String postsid);
	
	int  getPostsRows();
	
	int insertPosts(Posts post);
	
}
