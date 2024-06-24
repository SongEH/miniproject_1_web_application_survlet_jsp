package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import vo.PostVo;
import service.DBService;

public class PostDao {

	// single-ton pattern : 객체 1개만 생성해서 이용하자
	static PostDao single = null;

	public static PostDao getInstance() {

		// 없으면 생성해라
		if (single == null)
			single = new PostDao();

		return single;
	}

	// 외부에서 객체생성하지 말아라...
	private PostDao() {

	}

	public List<PostVo> selectList() {

		List<PostVo> list = new ArrayList<PostVo>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from post";

		try {
			// 1.Connection 얻어오기
			conn = DBService.getinstance().getConnection();

			// 2.PreparedStatement
			pstmt = conn.prepareStatement(sql);

			// 3.ResultSet 얻어온다
			rs = pstmt.executeQuery();

			while (rs.next()) {

				// 저장객체 생성->레코드에서 읽은 값을 넣는다
				PostVo vo = new PostVo();

				// rs가 가리키는 레코드값을 vo에 넣는다
				vo.setP_idx(rs.getInt("p_idx"));
				vo.setP_cate(rs.getString("p_cate"));
				vo.setP_title(rs.getString("p_title"));
				vo.setP_content(rs.getString("p_content"));
				vo.setP_rdate(rs.getString("p_rdate"));
				vo.setP_mdate(rs.getString("p_mdate"));
				vo.setP_type(rs.getInt("p_type"));
				vo.setP_hit(rs.getInt("p_hit"));
				vo.setM_idx(rs.getInt("m_idx"));
				
				// ArrayList에 추가
				list.add(vo);

			} // end:while

		} catch (Exception e) {
			e.printStackTrace();

		} finally {

			// 마무리 작업(열린역순으로 닫기)
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return list;
	}

	public int insert(PostVo vo) {

		int res = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;

		String sql = "insert into post(p_idx, p_cate, p_title, p_content, p_type, m_idx) values(seq_post_p_idx.nextVal,?,?,?,?,?)";

		try {
			//1.Connection 얻어오기
			conn = DBService.getinstance().getConnection();

			//2.PreparedStatement
			pstmt = conn.prepareStatement(sql);

			//3.pstmt parameter index 채우기
			pstmt.setString(1, vo.getP_title());
			pstmt.setString(2, vo.getP_content());
			pstmt.setString(3, vo.getP_cate());
			pstmt.setInt(4, vo.getP_type());
			pstmt.setInt(5, 1);
			
			//4.DB insert
			res = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();

		} finally {

			//마무리 작업(열린역순으로 닫기)
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return res;

	}//end:insert()

	public int delete(int p_idx) {

		int res = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;

		String sql = "delete from post where p_idx=?";

		try {
			//1.Connection 얻어오기
			conn = DBService.getinstance().getConnection();

			//2.PreparedStatement
			pstmt = conn.prepareStatement(sql);

			//3.pstmt parameter index 채우기
			pstmt.setInt(1,p_idx);
			
			//4.DB delete
			res = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();

		} finally {

			//마무리 작업(열린역순으로 닫기)
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return res;

	}//end:delete()
}
