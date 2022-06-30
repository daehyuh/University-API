package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;

/**
 * Servlet implementation class ApiKeyMake
 */
@WebServlet("/ApiKeyMake")
public class ApiKeyMake extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApiKeyMake() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("um_id");
		
		String uuid = UUID.randomUUID().toString();
		
		try {
			DAO.UUIDUpdate(id, uuid);
			
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('인증키가 생성됬습니다.');");
			out.print("location.href='/ApiKeySelect?um_id="+id+"';"); // 로케이션 처리
			out.print("</script>");
			out.close();
		} catch(Exception e){
			e.printStackTrace();
			
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('인증키를 생성하는데 오류가 발생했습니다.');");
			//out.print("alert('메인페이지로 이동합니다.');"); // 원하는 방식으로 처리
			out.print("location.href='../jsp/index.jsp';"); // 로케이션 처리
			out.print("</script>");
			out.close();	
		}
	}

}
