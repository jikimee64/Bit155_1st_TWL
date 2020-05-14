package kr.or.bit.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.action.Action;
import kr.or.bit.action.ActionForward;
import kr.or.bit.dao.EmpDao;

public class EmpDeleteService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
			String empno = request.getParameter("empno");
			
	
		   EmpDao dao = new EmpDao(); // POINT
			int result = 0;
			try {
				result = dao.deleteEmp(Long.parseLong(empno));
			} catch(Exception e) {
				e.printStackTrace();
				result = 0;
			}
			
			System.out.println(result);
			String msg = "";
			String url = "";
			if (result > 0) {
				msg = "삭제 성공";
				url = "empList.jsp";
			} else {
				msg = "삭제 실패";
				url = "empList.jsp";
			}

			request.setAttribute("emp_msg", msg);
			request.setAttribute("emp_url", url);

			ActionForward forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/WEB-INF/views/redirect.jsp");

			return forward;
		}
}
