package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vo.MemberVo;

import java.io.IOException;

import dao.BlogDao;

/**
 * Servlet implementation class LoginAction
 */
@WebServlet("/login.do")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 받은 정보 UTF-8로 인코딩
		request.setCharacterEncoding("UTF-8");

        String m_id = request.getParameter("m_id");
        String m_pw = request.getParameter("m_pw");
        String remember = request.getParameter("remember");

        // DB에서 회원 정보를 확인
        BlogDao dao = BlogDao.getinstance();
        // 확인한 정보를 반환
        MemberVo mv = dao.login(m_id, m_pw, remember, request, response);

        if (mv != null) {
            // 로그인 성공 시 세션에 회원 정보를 저장
            HttpSession session = request.getSession();
            session.setAttribute("member", mv);
            response.sendRedirect("login.jsp");
        } else {
            // 로그인 실패 시 로그인 페이지로 리다이렉트
            response.sendRedirect("login.jsp?error=1");
        }
	}

}
