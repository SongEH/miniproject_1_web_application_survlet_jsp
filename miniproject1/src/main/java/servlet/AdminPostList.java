package servlet;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class member_list
 */
@WebServlet("/JSP/admin/postlist.do")
public class AdminPostList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		// 데이터 가져오기
		List<PostVo> list = BlogDao.getinstance().selectPostList();
		// request binding
		request.setAttribute("list", list);
		
		// Dispather 형식으로 호출
		String forward_page = "post_list.jsp";
		RequestDispatcher disp = request.getRequestDispatcher(forward_page);
		disp.forward(request, response);
	}
}
