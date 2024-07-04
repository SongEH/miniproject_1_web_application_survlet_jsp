package servlet;

import java.io.IOException;

import dao.BlogDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.CommentVo;
import vo.MemberVo;
import vo.PostVo;

/**
 * Servlet implementation class DeptListAction
 */
@WebServlet("/JSP/admin/comment_modify_form.do")
public class AdminCommentModifyActionForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 수정할 댓글의 idx를 받는다.
		int idx = Integer.parseInt(request.getParameter("c_idx"));
		
		// 댓글 정보 얻어오기
		CommentVo cv = BlogDao.getInstance().selectCommentByCidx(idx);
		
		// request binding
		request.setAttribute("cv", cv);
		
		// Dispather 형식으로 호출
		String forward_page = "admin_comment_page.jsp";
		RequestDispatcher disp = request.getRequestDispatcher(forward_page);
		disp.forward(request, response);

	}

}
