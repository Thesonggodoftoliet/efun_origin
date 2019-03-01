/**
 * 
 */
package daoImpl;

import java.util.List;

import dao.PostsDao;
import instance.Posts;
import utils.JdbcUtils;

/**
 * @author 李煜峰
 *
 * date:Jul 9, 2018 time:5:10:45 PM
 */
public class PostsDaoImpl implements PostsDao {

	/* (non-Javadoc)
	 * @see dao.PostsDao#getAll()
	 */
	@Override
	public List<Posts> getAll() {
		// TODO Auto-generated method stub
		String sql = "select * from posts order by poststime desc";
		return JdbcUtils.getList(Posts.class, sql);
	}

	/* (non-Javadoc)
	 * @see dao.PostsDao#getPostsByUserid(java.lang.String)
	 */
	@Override
	public List<Posts> getPostsByUserid(String userid) {
		// TODO Auto-generated method stub
		String sql = "select * from posts where Userid = '"+userid+"' order by poststime desc";
		return JdbcUtils.getList(Posts.class, sql);
	}

	/* (non-Javadoc)
	 * @see dao.PostsDao#getPostByPostsId(java.lang.String)
	 */
	@Override
	public Posts getPostByPostsId(String postsid) {
		// TODO Auto-generated method stub
		String sql = "select * from posts where postsid = ?";
		return (Posts)JdbcUtils.getObjectById(Posts.class, sql, postsid);
	}

	/* (non-Javadoc)
	 * @see dao.PostsDao#insertPosts(instance.Posts)
	 */
	@Override
	public int insertPosts(Posts post) {
		// TODO Auto-generated method stub
		String sql = "insert into posts values(?,?,?,?,?)";
		return JdbcUtils.executeSQL(sql, post.getPostsid(),post.getPoststitle(),post.getPostsdetails(),post.getUserid(),post.getPoststime());
	}

	/* (non-Javadoc)
	 * @see dao.PostsDao#getPostsRows()
	 */
	@Override
	public int getPostsRows() {
		// TODO Auto-generated method stub
		String sql = "select * from posts";
		return JdbcUtils.getListCount(sql);
	}

}
