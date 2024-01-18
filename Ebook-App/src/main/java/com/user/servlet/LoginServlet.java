package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.UserDaoImpl;
import com.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		try 
		{
			UserDaoImpl dao = new UserDaoImpl(DBConnect.getConn());
			HttpSession session = req.getSession();
			
			String email = req.getParameter("email"); // input from web page form is stored here
			String password = req.getParameter("password");

			if("tusharkhande93@gmail.com".equals(email) && "12".equals(password))
			{
				User us = new User();
				session.setAttribute("userObj", us);
				resp.sendRedirect("admin/home.jsp");
			}
			else  
			{
				User us = dao.login(email, password);
				if(us!=null) // if we get data
				{
					session.setAttribute("userObj", us); // then we will create object as 'userObj' in which we pass'us'.
					resp.sendRedirect("home.jsp"); // redirect to user-home
				}
				else // and if we get any error/get null
				{
					session.setAttribute("failedMsg", "Email & Password Invalid"); // then we will display failed msg with another msg
					resp.sendRedirect("login.jsp"); 					
				}
				resp.sendRedirect("home.jsp");				
			}
			
			
		} 
		catch (Exception e) 
		{	
			e.printStackTrace();
		}

	}

}
