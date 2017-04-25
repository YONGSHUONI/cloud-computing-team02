package cloud.servlet;

import cloud.clouddb.cloud_app.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AppServlet
 */
@WebServlet("/AppServlet")
public class AppServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppServlet() {
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
		// TODO Auto-generated method stub
		System.out.println("POst");
		AppDAO appDAO = new AppDAO(); 
	
		Collection<App> app_collection =new ArrayList<App>();
		
		app_collection =appDAO.getAllApps();
		Iterator<App> it=app_collection.iterator();
		
		for(int i=0;i<app_collection.size();i++)
		{
			App app=new App();
			app=it.next();
			System.out.println(app.getApp_name());
			System.out.println(app.getUrl());
			//System.out.println(it.next().getApp_name());
			HttpSession session = request.getSession(true); 
			session.setAttribute("apps",app.getUrl()); 
			session.setAttribute("appname", app.getApp_name());
		}
		/*HttpSession session = request.getSession(true); 
		session.setAttribute("apps",app_collection); 
		*/
		
		
		String url = "../../../CloudServer/platform/index.jsp?Username="+ URLEncoder.encode(request.getParameter("Username"),"UTF-8");
		
		
		response.sendRedirect(url);
		
		
	}

}
