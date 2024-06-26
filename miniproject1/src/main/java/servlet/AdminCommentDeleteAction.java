package servlet;

import java.io.IOException;

import dao.BlogDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class DeptListAction
 */
@WebServlet("/JSP/admin/comment_delete.do")
public class AdminCommentDeleteAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 삭제할 idx 수신
		int c_idx = Integer.parseInt(request.getParameter("c_idx"));
		
		int res = BlogDao.getInstance().commentDelete(c_idx);
		
		response.sendRedirect("commentlist.do");

	}

}