package utils;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

public class odbcUtils {
	
   private  static final String DRIVER="driver";
   private  static final String URL="url";
   private  static final String  USERNAME="username";
   private  static final String PASSWORD="password";
   static Properties proper=new Properties();
  
   static ThreadLocal<Connection> container =new ThreadLocal<Connection>();
   
	
   static{
	   try {
		proper.load(odbcUtils.class.getClassLoader().getResourceAsStream("jdbc.properties"));
	
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   }
	
	static {
		try {
			Class.forName(proper.getProperty(DRIVER));
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	

	public static Connection getConnection() {
		Connection conn=container.get();
		try {
			
			if (conn==null||conn.isClosed()) {
				conn = DriverManager.getConnection(
						proper.getProperty(URL),proper.getProperty(USERNAME) ,proper.getProperty(PASSWORD));
				container.set(conn);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	
	
	public static ArrayList<HashMap<String, Object>> executeQuery(String sql, Object[] params){
	    ArrayList<HashMap<String, Object>> list =new ArrayList<HashMap<String,Object>>();
		Connection conn = getConnection();
		PreparedStatement pst = null;
		ResultSet rs=null;
		try {
			pst=conn.prepareStatement(sql);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					pst.setObject(i + 1, params[i]);
				}

			}
			 rs= pst.executeQuery();
			
			 int count=rs.getMetaData().getColumnCount();
			 while(rs.next()){
				 HashMap<String, Object> row=new HashMap<String, Object>();
				 for (int i = 0; i < count; i++) {
					String key =rs.getMetaData().getColumnLabel(i+1);
					Object value=rs.getObject(key);
					if (value ==null) {
						value="";
					}
					row.put(key,value);
				}
				 list.add(row);
			 }
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			throw new RuntimeException(e.getMessage());
		}
		return list;
		
		
		
	}
	
	
	//statement
	public static ResultSet executeQuery11(String sql)
			throws SQLException {
		
		Connection conn = getConnection();
		java.sql.Statement pst1=null;
		pst1=conn.createStatement();
		ResultSet rs = pst1.executeQuery(sql);
		return rs;
	}
	
	
	//鏌ヨ鍏ㄩ儴鐢ㄦ埛
	public static ResultSet executeQueryall(String sql)
			throws SQLException {
		// 鑾峰彇杩炴帴
		Connection conn = getConnection();
		PreparedStatement pst = conn.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		return rs;
	}
	
	
    //DML,澧炲姞锛屽垹闄わ紝淇敼
	public static int executeUpdate(String sql, Object[] params)
			 {
		Connection conn = getConnection();
		// 鑾峰彇杩炴帴
		PreparedStatement pst =null;
		int row =0;
		try {
			pst=conn.prepareStatement(sql);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					pst.setObject(i + 1, params[i]);
				}
			}
			row= pst.executeUpdate();
			System.out.println(row);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if (pst!=null) {
				try {
					pst.close();
					pst=null;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
			
		return row;
	}
	//鏁版嵁搴撳叧闂�
	public static void close() {
		
		if (container.get() != null) {
			try {
				container.get().close();
				container.remove();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
