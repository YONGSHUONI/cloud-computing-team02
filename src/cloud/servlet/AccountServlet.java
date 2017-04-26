package cloud.servlet;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cloud.clouddb.cloud_account.AccountDAO;
import cloud.clouddb.cloud_user.User;
import cloud.clouddb.cloud_user.UserDAO;

/**
 * Servlet implementation class AccountServlet
 */
@WebServlet("/AccountServlet")
public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user =new User();
		user=(User)request.getSession().getAttribute("currentSessionUser");
		//user.setUsername(request.getParameter("username")); 
		//user.setId(Integer.parseInt(request.getParameter("id")));
		AccountDAO accountdao= new AccountDAO();
		if(accountdao.addDia(Double.parseDouble(request.getParameter("diamond").toString()), user))
		{
			String url = "../../../CloudServer/platform/index.jsp?diamond="+ URLEncoder.encode(request.getParameter("diamond"),"UTF-8");
			
			
			response.sendRedirect(url);
			System.out.println("succed");
			System.out.println(user.getUsername().toString());
		}
		else
		{
			String url = "../../../CloudServer/platform/index.jsp?diamond="+ URLEncoder.encode(request.getParameter("diamond"),"UTF-8");
			
			
			response.sendRedirect(url);
			System.out.println("fail");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user =new User();
		user=(User)request.getSession().getAttribute("currentSessionUser");
		AccountDAO accountdao= new AccountDAO();
		if(accountdao.addDia(Double.parseDouble(request.getParameter("diamond").toString()), user))
		{
			String url = "../../../CloudServer/platform/index.jsp";//?Username="+ URLEncoder.encode(request.getParameter("diamond"),"UTF-8");
			
			
			response.sendRedirect(url);
			System.out.println("succed");
		}
		else
		{
			String url = "../../../CloudServer/platform/index.jsp";//?Username="+ URLEncoder.encode(request.getParameter("diamond"),"UTF-8");
			
			
			response.sendRedirect(url);
			System.out.println("fail");
		}
		
	}

}
