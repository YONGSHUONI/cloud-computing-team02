package cloud.servlet;

import cloud.clouddb.cloud_user.*;
import java.io.*;

import java.io.IOException;
import java.net.URLEncoder;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("Login")!=null && request.getParameter("Login").equals("Login")){
			try {
				login(request, response);
			} catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(request.getParameter("Sign up")!=null && request.getParameter("Sign up").equals("Sign up")){
			signUp(request, response);
		}
			
	}

	// login function
	private void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, NoSuchAlgorithmException, InvalidKeySpecException{
		
		UserDAO dao = new UserDAO();
		User loginUser = new User();
		loginUser.setUsername(request.getParameter("Username").toString());
		String pswd=Hash.hashFunction(request.getParameter("Password").toString());
		loginUser.setPassword(pswd);
		
		// password is true for the login username
		if(dao.verifyPassword(loginUser)==true){
			//String url = "../../../CloudServer/platform/index.jsp?username="+ URLEncoder.encode(request.getParameter("username"),"UTF-8");
			//response.sendRedirect(url);
			dao.getUser(loginUser.getUsername(), loginUser);
			
			HttpSession session = request.getSession(true); 
			session.setAttribute("currentSessionUser",loginUser);
			ServletContext context = getServletContext();
			RequestDispatcher rd=context.getRequestDispatcher("/AppServlet");
			rd.forward(request, response);
		}else{
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<html><body>");
			out.println("fail");
			out.println("</body></html>");
		}
	}
	
	// sign up function
	private void signUp(HttpServletRequest request, HttpServletResponse response)throws IOException{
		UserDAO dao = new UserDAO();
		User signUpUser = new User();
		signUpUser.setUsername(request.getParameter("Username").toString());
		signUpUser.setPassword(request.getParameter("Password").toString());
		
		if(dao.ifSameUsername(signUpUser)){
			dao.storeUser(signUpUser);
			String url = "../../../CloudServer/platform/index.jsp?username="+ URLEncoder.encode(signUpUser.getUsername(),"UTF-8");
			response.sendRedirect(url);
		}else{
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<html><body>");
			out.println("The username is already exist!");
			out.println("</body></html>");
			
		}
	}


}
