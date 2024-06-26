package servlet;

import java.io.IOException;

import dao.MemberDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.MemberVo;

/**
 * Servlet implementation class DeptListAction
 */
@WebServlet("/JSP/admin/member_modify.do")
public class AdminMemberModifyAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 회원정보 가져오기
		int m_idx = Integer.parseInt(request.getParameter("m_idx"));
		
        // 수정된 정보 가져오기
		String m_name = request.getParameter("m_name");
		String m_email = request.getParameter("m_email");
		String m_intro = request.getParameter("m_intro");
		
		// DB 등록
		MemberDao dao = MemberDao.getInstance();
        MemberVo mv = new MemberVo(m_idx, m_name, m_email, m_intro);
        dao.memberUpdate(mv);
		
        response.sendRedirect("memberlist.do");
	}

}