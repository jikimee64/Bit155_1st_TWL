package kr.or.bit.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

import kr.or.bit.action.Action;
import kr.or.bit.action.ActionForward;
import kr.or.bit.service.EmpListService;

@WebServlet("*.do")
public class FrontEmpController extends HttpServlet {

	public FrontEmpController() {
		super();
	}

	private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String url_Command = requestURI.substring(contextPath.length());

		Action action = null;
		ActionForward forward = null;

		if(url_Command.equals("/EmpTable.do")) {
			forward = new ActionForward();
			forward.setPath("/WEB-INF/views/EmpTable.jsp");
		}
		else if (url_Command.equals("/EmpTable.do")) {
	                               
			action = new EmpListService();
    		forward = action.execute(request, response);
		} else if (url_Command.equals("/")) { 
			
		}

		if (forward != null) {
			RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
			dis.forward(request, response);
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

}
