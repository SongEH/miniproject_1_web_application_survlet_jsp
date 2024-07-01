package servlet;

import java.io.IOException;

import dao.PostDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.PostVo;

/**
 * Servlet implementation class PostModifyAction
 */

@WebServlet("/post/modify.do")
public class PostModifyAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("utf-8");
		
		int p_idx = Integer.parseInt(request.getParameter("p_idx"));
		/* String no = request.getParameter("no"); */
		String p_title = request.getParameter("p_title");
		String p_content = request.getParameter("p_content");
		String p_cate = request.getParameter("p_cate");
		int p_type = 1;
		if(request.getParameter("p_type") != null) {
			p_type = Integer.parseInt(request.getParameter("p_type"));
		} 
		
		PostVo vo = new PostVo(p_idx, p_title, p_content, p_cate, p_type);
		
		int res = PostDao.getInstance().update(vo);
		
		response.sendRedirect("list.do");
	}

}
