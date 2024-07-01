package servlet;

import java.io.IOException;

import dao.CommentDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.CommentVo;

/**
 * Servlet implementation class PostInsertFormAction
 */

@WebServlet("/post/comments_insert.do")
public class CommentInsertAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// parameter받기
		String c_content = request.getParameter("c_content").replaceAll("\n", "<br>");
		int p_idx = Integer.parseInt(request.getParameter("p_idx"));
		int m_idx = Integer.parseInt(request.getParameter("m_idx"));
		
		//  VisitVo를 포장한다
		CommentVo cv = new CommentVo(p_idx, m_idx, c_content);
		
		//  DB insert
		int res = CommentDao.getInstance().commentInsert(cv);
		
		response.sendRedirect("list.do");

	}

}