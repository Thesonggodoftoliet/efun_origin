/**
 * 
 */
package daoImpl;

import dao.TimeDao;
import instance.Time;
import utils.JdbcUtils;

/**
 * @author 李煜峰
 *
 * date:Jul 13, 2018 time:4:47:40 PM
 */
public class TimeDaoImpl implements TimeDao {

	/* (non-Javadoc)
	 * @see dao.TimeDao#getTimeByUserid(java.lang.String)
	 */
	@Override
	public Time getTimeByUserid(String userid) {
		// TODO Auto-generated method stub
		String sql = "select * from usertime where userid= ?";
		return (Time)JdbcUtils.getObjectById(Time.class, sql, userid);
	}

	/* (non-Javadoc)
	 * @see dao.TimeDao#insertTime(instance.Time)
	 */
	@Override
	public int insertTime(Time time) {
		// TODO Auto-generated method stub
		String sql = "insert into usertime values(?,?,?,?,?,?,?,?)";
		return JdbcUtils.executeSQL(sql, time.getUserid(),time.getLogintime(),time.getHour(),time.getMinute(),time.getGhour(),time.getGminute(),time.getSecond(),time.getGsecond());
	}

	/* (non-Javadoc)
	 * @see dao.TimeDao#updateTime(instance.Time)
	 */
	@Override
	public int updateTime(Time time) {
		// TODO Auto-generated method stub
		String sql = "update usertime set logintime=?,hour=?,minute=?,ghour=?,gminute=?,second=?,gsecond=? where userid=?";
		return JdbcUtils.executeSQL(sql, time.getLogintime(),time.getHour(),time.getMinute(),time.getGhour(),time.getGminute(),time.getSecond(),time.getGsecond(),time.getUserid());
	}

}
