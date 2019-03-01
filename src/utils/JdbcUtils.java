
package utils;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.apache.commons.beanutils.BeanUtils;

/**
 * jdbc宸ュ叿绫�
 * 
 * @author azhu
 *
 */
public final class JdbcUtils {
	private static String driver;
	private static String url;
	private static String user;
	private static String password;

	static {
		try {
			Properties ps = new Properties();
			InputStream instream = JdbcUtils.class.getResourceAsStream("/jdbc.properties");
			ps.load(instream); // 鍔犺浇灞炴�ф枃浠�
			driver = ps.getProperty("driver");
			url = ps.getProperty("url");
			user = ps.getProperty("user");
			password = ps.getProperty("password");
		} catch (IOException e) {
			e.printStackTrace();
		}
		try {
			Class.forName(driver);// 鍔犺浇椹卞姩
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 鑾峰彇鏁版嵁搴撹繛鎺ュ璞�
	 * 
	 * @return 杩炴帴瀵硅薄
	 */
	public static Connection getConn() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	/**
	 * 鏌ヨ澶氫釜瀵硅薄
	 * 
	 * @param clazz
	 *            瑕佹煡璇㈢殑瀵硅薄绫诲瀷
	 * @param sql
	 *            鏌ヨ璇彞
	 * @return 鏌ヨ鍑虹殑瀵硅薄缁勬垚鐨勯泦鍚�
	 */
	public static List getList(Class clazz, String sql) {
		List list = new ArrayList();
		Connection conn = getConn();
		PreparedStatement st = null;
		ResultSet rs = null;

		try {
			st = conn.prepareStatement(sql);
			rs = st.executeQuery();// 鎵ц鏌ヨ
			ResultSetMetaData metaData = rs.getMetaData();
			while (rs.next()) { // 閬嶅巻鏌ヨ鍑虹殑姣忎釜缁撴灉 骞跺皝瑁呭璞�
				Object obj = clazz.newInstance();
				for (int i = 1; i <= metaData.getColumnCount(); i++) {
					System.out.println( rs.getObject(i)+"------");
					System.out.println( metaData.getColumnName(i));
					
					BeanUtils.copyProperty(obj, metaData.getColumnName(i), rs.getObject(i));
				}
				list.add(obj); // 灏嗗璞℃坊鍔犲埌闆嗗悎
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} finally {// 鍏抽棴
			close(rs, st, conn);
		}
		return list;
	}

	/**
	 * 鏍规嵁鏍囪瘑鏌ヨ鍑哄敮涓�涓�涓璞�
	 * 
	 * @param clazz
	 *            瑕佹煡璇㈢殑绫诲瀷
	 * @param sql
	 *            鏌ヨ璇彞
	 * @return 鏌ヨ鍑虹殑瀵硅薄  where id=?
	 */
	public static Object getObjectById(Class clazz, String sql,Object id) {
		Connection conn = getConn();
		PreparedStatement st = null;
		ResultSet rs = null;
		Object obj = null;
		try {
			st = conn.prepareStatement(sql);
			st.setObject(1,id);
			rs = st.executeQuery();
			ResultSetMetaData metaData = rs.getMetaData();
			if (rs.next()) { // 濡傛灉鍙互鏌ヨ鍑烘暟鎹�
				obj = clazz.newInstance(); // 瀹炰緥鍖栧璞�
				for (int i = 1; i <= metaData.getColumnCount(); i++) { // 璁剧疆鍚勪釜鍒楃殑鍊煎埌瀵硅薄  娉ㄦ剰锛氬垪鍚嶅拰灞炴�у悕瑕佷竴鑷�
					BeanUtils.copyProperty(obj, metaData.getColumnName(i), rs.getObject(i));
				}
			}
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} finally {
			close(rs, st, conn);
		}
		return obj;
	}

	/**
	 * 鑾峰彇琛屾暟
	 * 
	 * @param sql
	 *            鏌ヨ琛屾暟鐨剆ql璇彞
	 * @return 鏌ヨ鐨勭粨鏋�
	 */
	public static int getListCount(String sql) {
		int result = 0;
		Connection conn = getConn();
		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			st = conn.prepareStatement(sql);
			rs = st.executeQuery();// 鎵ц鏌ヨ
			while (rs.next()) {
				result++;// 璁板綍鏌ヨ鍑虹殑缁撴灉
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs, st, conn);
		}
		return result;
	}

	/**
	 * 鎵ц澧炲垹鏀圭殑鏂规硶
	 * 
	 * @param sql
	 *            澧炲垹鏀圭殑璇彞
	 * @param ps
	 *            鍔ㄦ�佹暟缁� 璇彞涓殑鍙傛暟
	 * @return 褰卞搷鐨勮鏁�
	 */
	public static int executeSQL(String sql, Object... ps) {
		Connection conn = getConn();
		int executeUpdate = 0;
		PreparedStatement prepareStatement = null;
		try {
			prepareStatement = conn.prepareStatement(sql);
			for (int i = 1; i <= ps.length; i++) {// 璁剧疆鍙傛暟
				prepareStatement.setObject(i, ps[i - 1]);
			}
			executeUpdate = prepareStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(null, prepareStatement, conn);
		}
		return executeUpdate;
	}
	
	public static void test(){
		System.out.println("test");
	}

	/**
	 * 浜嬪姟绠＄悊
	 * 
	 * @param sqlArray
	 *            闇�瑕佸湪鍚屼竴涓簨鍔′腑澶勭悊鐨凷ql璇彞
	 */
	public static void executeTran(String... sqlArray) {
		Connection conn = getConn();
		PreparedStatement prepareStatement = null;
		try {
			conn.setAutoCommit(false);// 鍏抽棴鑷姩鎻愪氦
			if (sqlArray.length > 0) {
				for (String sql : sqlArray) {
					prepareStatement = conn.prepareStatement(sql);
					prepareStatement.execute();
				}
			}
			conn.commit();// 鎵�鏈夋搷浣滄墽琛岀粨鏉� 鎻愪氦浜嬪姟
			conn.setAutoCommit(true);// 鎵撳紑鑷姩浜嬪姟鎻愪氦
		} catch (SQLException e) {// 濡傛灉鍑虹幇寮傚父
			try {
				conn.rollback();// 鍥炴粴
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			close(null, prepareStatement, conn);
		}
	}

	/**
	 *鍏抽棴璧勬簮
	 * @param rs 缁撴灉闆�
	 * @param st 鍛戒护琛屽璞�
	 * @param conn 鏁版嵁搴撹繛鎺�
	 */
	private static void close(ResultSet rs, Statement st, Connection conn) {
		try {
			if (rs != null) {
				rs.close();
			}		
			if (st != null) {

				st.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
