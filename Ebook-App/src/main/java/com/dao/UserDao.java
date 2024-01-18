package com.dao;

import com.entity.User;
public interface UserDao 
{
	public boolean userRegister(User us); // data from user is in the object form that we passed here
	
	public User login(String email, String pasword);
	
	// here we are creating methods so we can implement this in another class 
	// no change in method declaration
	
	
	
}
