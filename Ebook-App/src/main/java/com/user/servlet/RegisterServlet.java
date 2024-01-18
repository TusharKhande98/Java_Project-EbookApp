// LAST 8.58 MIN

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

@SuppressWarnings("serial")
@WebServlet("/register")
public class RegisterServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		try 
		{
			String name  = req.getParameter("fname");
			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String password = req.getParameter("password");
			String check = req.getParameter("check");

//			System.out.println(name+" "+email+" "+phno+" "+password+" "+check);

			User us = new User(); // create object for User to access non-static member
			
			us.setName(name); // values will be assigned to via getter setter
			us.setEmail(email);
			us.setPhno(phno);
			us.setPassword(password);
			
			HttpSession session = req.getSession();
			
			if(check!=null) // if user agree on T & C
			{
				// to use 'userRegister method first we have to create    
				// first we need to pass connection in constructor
				// then we can call method
				UserDaoImpl dao = new UserDaoImpl(DBConnect.getConn());
									
				boolean f = dao.userRegister(us); // this method gives us boolean value from 'UserDaoImpl' class
				if(f) // if its true then if block executes
				{
					session.setAttribute("succMsg", "Registration successful..");
					resp.sendRedirect("register.jsp");
				}
				else 
				{
					session.setAttribute("failedMsg", "Something wrong on server");
					resp.sendRedirect("register.jsp");
				}
			}
			else // if user did not agree on T & C			
			{
				session.setAttribute("failedMsg", "Please Agree Terms & Condition");
				resp.sendRedirect("register.jsp");
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

}
