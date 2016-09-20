package team2.miniproject.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginSucAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String stu_num = request.getParameter("stu_num");
		String stu_pwd = request.getParameter("stu_pwd");
		
		request.setAttribute("stu_num", stu_num);
		request.setAttribute("stu_pwd", stu_pwd);
		return null;
	}

}
