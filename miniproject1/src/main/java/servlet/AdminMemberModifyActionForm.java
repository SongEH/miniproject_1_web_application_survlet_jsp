package servlet;

import java.io.IOException;

import dao.MemberDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.MemberVo;

/**
 * Servlet implementation class DeptListAction
 */
@WebServlet("/JSP/admin/member_modify_form.do")
public class AdminMemberModifyActionForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 수정할 회원의 idx를 받는다.
		int idx = Integer.parseInt(request.getParameter("m_idx"));
		
		// 회원 정보 얻어오기
		MemberVo mv = MemberDao.getInstance().selectMemberByMidx(idx);
		
		// request binding
		request.setAttribute("mv", mv);
		
		// Dispather 형식으로 호출
		String forward_page = "admin_member_page.jsp";
		RequestDispatcher disp = request.getRequestDispatcher(forward_page);
		disp.forward(request, response);

	}

}
