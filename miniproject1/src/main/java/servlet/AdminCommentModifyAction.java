package servlet;

import java.io.IOException;

import dao.BlogDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.CommentVo;

/**
 * Servlet implementation class DeptListAction
 */
@WebServlet("/JSP/admin/comment_modify.do")
public class AdminCommentModifyAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 댓글정보 가져오기
		int c_idx = Integer.parseInt(request.getParameter("c_idx"));
		
        // 수정된 정보 가져오기
		String c_content = request.getParameter("c_content");
		
		// DB 등록
		BlogDao dao = BlogDao.getInstance();
        CommentVo cv = new CommentVo(c_idx, c_content);
        dao.commentUpdate(cv);
		
        response.sendRedirect("commentlist.do");
	}

}