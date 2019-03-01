/**
 * 
 */
package dao;

import instance.Time;

/**
 * @author 李煜峰
 *
 * date:Jul 13, 2018 time:4:41:15 PM
 */
public interface TimeDao {
	Time getTimeByUserid(String userid);
	
	int updateTime(Time time);
	
	int insertTime(Time time);
}
