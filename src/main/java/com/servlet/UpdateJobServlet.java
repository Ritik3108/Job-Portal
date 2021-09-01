package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.JobDAO;
import com.entity.Jobs;

@WebServlet("/update")
public class UpdateJobServlet extends HttpServlet {
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String tit=req.getParameter("title");
			String descr=req.getParameter("desc");
			String cate=req.getParameter("category");
			String stat=req.getParameter("Status");
			String loc=req.getParameter("location");
			
			Jobs jo= new Jobs();
			jo.setId(id);
			jo.setTitle(tit);
			jo.setDescription(descr);
			jo.setCategory(cate);
			jo.setStatus(stat);
			jo.setLocation(loc);
			
			HttpSession session=req.getSession();

			JobDAO dao=new JobDAO(DBConnect.getConn());
			boolean f=dao.updateJob(jo);
			if(f)
			{
				session.setAttribute("upmsg", "Job Updated Successfully!");
				resp.sendRedirect("viewjob.jsp");
			}
			else		{
				session.setAttribute("upmsg", "Something Went Wrong!");
				resp.sendRedirect("viewjob.jsp");

			}
			
		} catch (Exception e) {
e.printStackTrace();		}
		
	}

}
