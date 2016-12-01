package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import service.MemberService;
import vo.MemberVO;

@WebServlet("/member.do")
public class MemberController extends HttpServlet {
	
	private MemberService service = MemberService.getInstance();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		execute(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		execute(request, response);
	}

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		String viewPath = "";

		if (action.equals("register")) {
			// 회원가입 양식 보여주기
			viewPath = "register.jsp";
		} else if (action.equals("join")) {
			// 입력한 내용으로 회원가입 진행
			MemberVO member = new MemberVO();
			member.setId(request.getParameter("id"));
			member.setEmail(request.getParameter("email"));			
			member.setPassword(request.getParameter("password"));

			System.out.println(member);
			if (service.join(member) == true) {
				viewPath = "index.jsp";
			} else {
				viewPath = "join_fail.jsp";
			}
		} else if (action.equals("signin")) {
			viewPath = "login.jsp";
		} else if (action.equals("login")) {
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			
			if (service.login(id, password) == true) {
				HttpSession session = request.getSession();
				session.setAttribute("loginId", id);
			}
			
			System.out.println((String)request.getAttribute("loginId"));
			System.out.println(password);
			
			viewPath = "index.jsp";
			
		} else if(action.equals("logout")){
			HttpSession session = request.getSession();
			session.invalidate();
			viewPath = "index.jsp";
		
		} else if(action.equals("leaveId")){
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			
			if (service.leave(id, password) == true) {
				viewPath = "leave_success.jsp";
			} else {
				viewPath = "leave_fail.jsp";
			}
		}
		// 자바 서블릿의 작업이 끝났으면 jsp에게 forward하기!
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPath);
		dispatcher.forward(request, response);
	}
}


