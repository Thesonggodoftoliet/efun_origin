package daoImpl;

import java.util.List;

import dao.UserDao;
import instance.User;
import utils.JdbcUtils;

/**
*@author 李煜峰
*@version 创建时间:Jul 6, 20184:14:48 PM
*
**/

public class UserDaoImpl implements UserDao{


	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		String sql = "select * from efunuser";
		return JdbcUtils.getList(User.class, sql);
	}

	@Override
	public User GetByid(String id) {
		// TODO Auto-generated method stub
		String sql = "select * from efunuser where id=?";
		return (User) JdbcUtils.getObjectById(User.class, sql, id);
	}

	@Override
	public User GetByemail(String email) {
		// TODO Auto-generated method stub
		String sql = "select * from efunuser where email=?";
		return (User) JdbcUtils.getObjectById(User.class, sql, email);
	}

	@Override
	public int UpdateUsername(User user) {
		// TODO Auto-generated method stub
		String sql="update efunuser set username=? where id=?";
		return JdbcUtils.executeSQL(sql, user.getUsername(),user.getId());
	}

	@Override
	public int InsertUser(User user) {
		// TODO Auto-generated method stub
		String sql="insert into efunuser values(?,?,?,?,?,?)";
		return JdbcUtils.executeSQL(sql, user.getId(),user.getPwd(),user.getUsername(),user.getEmail(),user.getUserlable(),user.getParentid());
	}
	
	public int GetMaxRows()
	{
		String sql = "select * from efunuser";
		int result = 0;
		result = JdbcUtils.getListCount(sql);
		return result+1;
	}

}
