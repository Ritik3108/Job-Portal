package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.DB.DBConnect;
import com.dao.UserDAO;
import com.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		
		try {
			String em=req.getParameter("lgemail");
			String ps=req.getParameter("lgpass");
			
			User u=new User();
			HttpSession hss=req.getSession();
			
			if("ritik@gmail.com".equals(em) && "ritik@gmail.com".equals(ps))
			{
				hss.setAttribute("userD", u);
				u.setRole("admin");
				resp.sendRedirect("admin.jsp");
			}
			
			else
			{
				
				UserDAO udao=new UserDAO(DBConnect.getConn());
				User user=udao.login(em, ps);
				
				if(user!=null)
				{
					hss.setAttribute("userD", user);
					resp.sendRedirect("Home.jsp");
				}
				else
				{
					hss.setAttribute("succmsg", "Invalid Login!..");
					resp.sendRedirect("login.jsp");


				}
			}

			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
