/**
 * 
 */
package daoImpl;

import java.util.List;

import dao.RepliesDao;
import instance.Posts;
import instance.Replies;
import utils.JdbcUtils;

/**
 * @author 李煜峰
 *
 * date:Jul 9, 2018 time:5:17:58 PM
 */
public class RepliesDaoImpl implements RepliesDao {

	/* (non-Javadoc)
	 * @see dao.RepliesDao#getAll()
	 */
	@Override
	public List<Replies> getAll() {
		// TODO Auto-generated method stub
		String sql  = "select * from replies order by repliestime desc";
		return JdbcUtils.getList(Replies.class, sql);
	}

	/* (non-Javadoc)
	 * @see dao.RepliesDao#getRepliesByPostsId(java.lang.String)
	 */
	@Override
	public List<Replies> getRepliesByPostsId(String postsid) {
		// TODO Auto-generated method stub
		String sql = "select * from replies where postsid='"+postsid+"' order by repliestime desc";
		return JdbcUtils.getList(Replies.class, sql);
	}

	/* (non-Javadoc)
	 * @see dao.RepliesDao#getRepliesByUserId(java.lang.String)
	 */
	@Override
	public List<Replies> getRepliesByUserId(String userid) {
		// TODO Auto-generated method stub
		String sql = "select * from replies where userid='"+userid+"' order by repliestime desc";
		return JdbcUtils.getList(Replies.class, sql);
	}

	/* (non-Javadoc)
	 * @see dao.RepliesDao#insertReplies(instance.Replies)
	 */
	@Override
	public int insertReplies(Replies reply) {
		// TODO Auto-generated method stub
		String sql = "insert into replies values(?,?,?,?,?)";
		return JdbcUtils.executeSQL(sql, reply.getPostsid(),reply.getRepliesid(),reply.getRepliesdetails(),reply.getUserid(),reply.getRepliestime());
	}

	/* (non-Javadoc)
	 * @see dao.RepliesDao#getRepliesRows()
	 */
	@Override
	public int getRepliesRows(Posts post) {
		// TODO Auto-generated method stub
		String sql = "select * from replies where postsid = '"+post.getPostsid()+"'";
		return JdbcUtils.getListCount(sql);
	}

}
