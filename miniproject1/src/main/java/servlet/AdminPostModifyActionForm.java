package servlet;

import java.io.IOException;

import dao.BlogDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.MemberVo;
import vo.PostVo;

/**
 * Servlet implementation class DeptListAction
 */
@WebServlet("/JSP/admin/post_modify_form.do")
public class AdminPostModifyActionForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 수정할 회원의 idx를 받는다.
		int idx = Integer.parseInt(request.getParameter("p_idx"));
		
		// 회원 정보 얻어오기
		PostVo pv = BlogDao.getinstance().selectPostByPidx(idx);
		
		// request binding
		request.setAttribute("pv", pv);
		
		// Dispather 형식으로 호출
		String forward_page = "admin_post_page.jsp";
		RequestDispatcher disp = request.getRequestDispatcher(forward_page);
		disp.forward(request, response);

	}

}
