package team2.miniproject.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team2.miniproject.DAO_VO.Team2DAO;

public class LoginFormAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String stu_num = request.getParameter("stu_num");
		String stu_pwd = request.getParameter("stu_pwd");
		int result = 0;
		
		Team2DAO dao = Team2DAO.getInstance();
		result = dao.loginDB(stu_num, stu_pwd);
		
		
		request.setAttribute("stu_num", stu_num);
		request.setAttribute("stu_pwd", stu_pwd);
		request.setAttribute("result", new Integer(result));
		
		
		return "/jsp/logincheck.jsp";
	}

}
