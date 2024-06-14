package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vo.MemberVo;

public class BlogDao {
	
	static BlogDao single = null;

	public static BlogDao getinstance() {

		if (single == null)
			single = new BlogDao();

		return single;
	}

	private BlogDao() {
	}
	
	public boolean login(int m_idx, String m_name, String m_id, String m_pw, String m_email, String m_intro, String m_rdate, String m_mdate) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		boolean status = false;
		
		MemberVo mv = new MemberVo();
		try {
			String sql = "select * from member where m_id = ? and m_pw ?";
			PreparedStatement pstm = conn.prepareStatement(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return status;
	} 
	
}
