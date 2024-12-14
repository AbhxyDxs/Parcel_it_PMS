package com.service;

import java.sql.SQLException;
import com.bean.User;
import com.dao.UserDAO;
import com.util.SHA256Util;

public class UserService {

	public int registerCustomer(User U) throws ClassNotFoundException, SQLException {
		UserDAO dao = new UserDAO();
		return dao.registerUser(U);
	}

	public boolean loginOfficer(String username, String password) throws ClassNotFoundException, SQLException {
		UserDAO dao = new UserDAO();
		String[] retCred = dao.login(username);
		if(retCred[1].equalsIgnoreCase("Officer")) {
			return SHA256Util.checkPassword(password, retCred[0]);
		}
		return false;
	}
	
	public boolean loginCustomer(String username, String password) throws ClassNotFoundException, SQLException {
		UserDAO dao = new UserDAO();
		String[] retCred = dao.login(username);
		
		if(retCred[1].equalsIgnoreCase("Customer")) {
			return SHA256Util.checkPassword(password, retCred[0]);
		}
		return false;
	}
}
