package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class LogoutAction
 */
@WebServlet("/logout.do")
public class LogoutAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 현재 세션을 가져옵니다. 세션이 없으면 null을 반환합니다.
        HttpSession session = request.getSession(false);

        if (session != null) {
            // 세션을 무효화합니다.
            session.invalidate();
        }

        // 로그아웃 후 로그인 페이지 또는 홈 페이지로 리다이렉트합니다.
        response.sendRedirect("");
	}

}
