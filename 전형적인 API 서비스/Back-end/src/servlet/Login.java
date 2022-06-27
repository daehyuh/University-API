package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAO;
import entity.Entity;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("um_id");
		String pwd = request.getParameter("um_pwd");
		
		
		Entity entity =  DAO.MemberSelectById(id);
		try {

			if(entity.getUM_ID().isEmpty()) {	
				msgPrint(request, response, "err");
				
			} else {
				if(entity.getUM_PASSWORD().equals(pwd)) {
					//msgPrint(request, response, "Success");
					HttpSession session = request.getSession();
					session.setAttribute("LOGIN", entity);
					
					ServletContext context = getServletContext();
					RequestDispatcher dispatcher = context
							.getRequestDispatcher("/jsp/index.jsp"); // 디스패쳐 처리
					dispatcher.forward(request, response);
				} else { // 패스워드 틀림					
					msgPrint(request, response, "err");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			msgPrint(request, response, "err");
		}
	}
	
	private void msgPrint(HttpServletRequest request, HttpServletResponse response,
			String msg) throws IOException {
		String msgPrint = "";

		if (msg.equals("err")) {
			msgPrint = "alert('아이디 또는 패스워드를 잘못입력하였습니다.');location.href='../jsp/index.jsp';"; // 로케이션 처리
		} else {
			msgPrint = "alert('로그인 성공');";
		}
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println(msgPrint);
		out.println("</script>");
		out.close();
	}

}
