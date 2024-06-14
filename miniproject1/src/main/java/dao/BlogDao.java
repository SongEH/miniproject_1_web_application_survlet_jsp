package dao;

import java.sql.PreparedStatement;

import vo.MemberVo;

public class BlogDao {
	
	public boolean login(int m_idx, String m_name, String m_id, String m_pw, String m_email, String m_intro, String m_rdate, String m_mdate) {
		boolean status = false;
		MemberVo mv = new MemberVo();
		String sql = "select * from member where m_id = ? and m_pw ?";
//		PreparedStatement psm = mv.conn.prepareStatement(sql);
		
		
		
		
		return status;
	} 
	
}
