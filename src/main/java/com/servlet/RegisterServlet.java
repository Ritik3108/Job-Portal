package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.UserDAO;
import com.entity.User;


@WebServlet("/RegisterServlet") 
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			String name=req.getParameter("uname");
			String qual=req.getParameter("uqual");
			String email=req.getParameter("uemail");
			String pass=req.getParameter("upass");
			
			User us=new User();
			us.setName(name);
			us.setEmail(email);
			us.setQualification(qual);
			us.setPassword(pass);
			us.setRole("User");
			
			UserDAO dao=new UserDAO(DBConnect.getConn());
			boolean f=dao.addUser(us);
			
			HttpSession session=req.getSession();
			
			if(f)
			{
				session.setAttribute("admsg", "User Registered Successfully!...");
				resp.sendRedirect("register.jsp");
			}
			else		{
				session.setAttribute("admsg", "Something Went Wrong!");
				resp.sendRedirect("register.jsp");
			}
			
		} catch (Exception e) {
e.printStackTrace();		}

		
	}

	
}
