package team2.miniproject.DAO_VO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dbclose.util.CloseUtil;

public class Team2DAO {
	
	public Connection getConnection() throws Exception {
		// 연결은 JNDI & Pool 형태로 연결 객체 생성해서 리턴할 것임.
		Context ctx = new InitialContext();
		Context env = (Context) ctx.lookup("java:comp/env");
		DataSource ds = (DataSource) env.lookup("jdbc:miniProjectDB");
		// DataSource ds = (DataSource)env.lookup("jdbc:BoardDB");

		return ds.getConnection();
	}
	
	private static Team2DAO instance = new Team2DAO();

	public static Team2DAO getInstance() {
		return instance;
	}
	
	
	public int loginDB(String stu_num, String stu_pwd) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		
		String sql = "select * from students where stu_num=? and stu_pwd = ?";
		Team2VO vo = new Team2VO();
		
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, stu_num);
			pstmt.setString(2, stu_pwd);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String num=rs.getString("stu_num");
				String pwd=rs.getString("stu_pwd");

				if(num.equals(stu_num) && pwd.equals(stu_pwd)){
					result = 1;
				}else {
					result = -1;
				}
								
			}else{
				vo = null;
			}			
		}catch(SQLException e){
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
		return result;
	}
}
