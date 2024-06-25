package servlet;

import java.io.IOException;

import dao.BlogDao;
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
@WebServlet("/JSP/admin/post_modify.do")
public class AdminPostModifyAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 게시글 정보 가져오기
		int p_idx = Integer.parseInt(request.getParameter("p_idx"));
		
        // 수정된 정보 가져오기
		String p_cate = request.getParameter("p_cate");
		String p_title = request.getParameter("p_title");
		String p_content = request.getParameter("p_content");
		int p_type = Integer.parseInt(request.getParameter("p_type"));
		
		// DB 등록
		BlogDao dao = BlogDao.getinstance();
        PostVo pv = new PostVo(p_idx, p_cate, p_title, p_content, p_type);
        dao.adminPostUpdate(pv);
		
        response.sendRedirect("postlist.do");
	}

}