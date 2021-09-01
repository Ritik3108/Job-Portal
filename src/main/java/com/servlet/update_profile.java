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

@WebServlet("/update_profile")
public class update_profile extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String name=req.getParameter("uname");
			String qual=req.getParameter("uqual");
			String email=req.getParameter("uemail");
			String pass=req.getParameter("upass");
			
			User us=new User();
			us.setName(name);
			us.setEmail(email);
			us.setQualification(qual);
			us.setPassword(pass);
			us.setId(id);
			
			UserDAO dao=new UserDAO(DBConnect.getConn());
			boolean f=dao.updateUser(us);
			
			HttpSession session=req.getSession();
			
			if(f)
			{
				session.setAttribute("upmsg", "Profile Updated Successfully!...");
				resp.sendRedirect("Home.jsp");
			}
			else		{
				session.setAttribute("upmsg", "Something Went Wrong!");
				resp.sendRedirect("Home.jsp");
			}
			
		} catch (Exception e) {
e.printStackTrace();		}

	}
	
	

}
