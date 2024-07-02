package servlet;

import java.io.IOException;
import dao.BlogDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/findidbyemail.do")
public class FindIdByEmailAction extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        String m_email = request.getParameter("m_email");
        BlogDao dao = BlogDao.getInstance();
        String id = dao.getId(m_email);

        if (id != null && !id.isEmpty()) {
            request.setAttribute("foundId", id);
            RequestDispatcher disp = request.getRequestDispatcher("find_id_success.jsp");
            disp.forward(request, response);
        } else {
            request.setAttribute("errorMessage", "해당 이메일은 회원가입이 되지 않았습니다.");
            RequestDispatcher disp = request.getRequestDispatcher("find_id.jsp");
            disp.forward(request, response);
        }
    }
}
