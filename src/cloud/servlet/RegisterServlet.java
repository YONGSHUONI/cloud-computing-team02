package cloud.servlet;

import cloud.clouddb.cloud_user.*;

import java.io.IOException;
import java.net.URLEncoder;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try 
		{ 
			User user = new User(); 
			UserDAO userdao=new UserDAO();
			
			user.setUsername(request.getParameter("username")); 
			user.setPassword(request.getParameter("password"));
			user.setEmail(request.getParameter("email"));
			user.setForename(request.getParameter("firstname"));
			user.setSurname(request.getParameter("secondname"));

			System.out.println("BUrda");
			if(userdao.ifSameUsername(user))
			{
				user = register(user);
				if (user.isValid()) 
				{ /*
					HttpSession session = request.getSession(true); 
					session.setAttribute("currentSessionUser",user); 
					response.sendRedirect("userLogged.jsp"); 
					//logged-in page 
					 * */
					 
					String url = "../../../CloudServer/platform/index.jsp?username="+ URLEncoder.encode(request.getParameter("username"),"UTF-8");
					
					
					response.sendRedirect(url);
				} 
				else 
				{
					String url = "../../../CloudServer/platform/login.jsp";
				
				
					response.sendRedirect(url);
				}
				//error page 
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			e.getMessage();
		}
		
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try 
		{ 
			User user = new User(); 
			UserDAO userdao=new UserDAO();
			
			user.setUsername(request.getParameter("Username")); 
			user.setPassword(request.getParameter("Password"));
			user.setEmail(request.getParameter("Email"));
			user.setForename(request.getParameter("FirstName"));
			user.setSurname(request.getParameter("LastName"));

			if(userdao.ifSameUsername(user))
			{
				user = register(user);
				if (user.isValid()) 
				{ 
					
					userdao.getUser(user.getUsername(), user);
					HttpSession session = request.getSession(true); 
					session.setAttribute("currentSessionUser",user);
					 
					String url = "../../../CloudServer/platform/index.jsp?Username="+ URLEncoder.encode(request.getParameter("Username"),"UTF-8");
					
					
					response.sendRedirect(url);
				} 
				else 
				{
					String url = "../../../CloudServer/platform/login.html";
				
				
					response.sendRedirect(url);
				}
				//error page 
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			e.getMessage();
		}
	}

	//Method for registration operation.
	public User register(User user) throws NoSuchAlgorithmException, InvalidKeySpecException
	{
			
		UserDAO userdao=new UserDAO();
					
		String password = user.getPassword(); 
		password=Hash.hashFunction(password);
		user.setPassword(password);
						
		if(userdao.storeUser(user))
			user.setValid(true);
		else
			user.setValid(false);
					
		return user;
	}	
}
