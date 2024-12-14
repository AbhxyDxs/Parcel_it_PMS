package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.User;
import com.util.DBUtil;

public class UserDAO {

    public int registerUser(User user) throws ClassNotFoundException, SQLException {
        Connection con = DBUtil.getConnection();
        if (con != null) {
            PreparedStatement ps = con.prepareStatement("INSERT INTO USERS (NAME, EMAIL, MOBILE, ADDRESS, PASSWORD, PREFERENCE, ACCESS) VALUES (?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getMobile());
            ps.setString(4, user.getAddress());
            ps.setString(5, user.getPassword());
            ps.setString(6, user.getPreference());
            ps.setString(7, "Customer");
            int result = ps.executeUpdate();

            if (result > 0) {
                ps = con.prepareStatement("SELECT ID FROM USERS WHERE ID = (SELECT IDENTITY_VAL_LOCAL() FROM SYSIBM.SYSDUMMY1)");
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    int userId = rs.getInt(1);
                    DBUtil.closeAllConnections(con, ps, rs);
                    return userId;
                }
            }
        }
        return -1;
    }

    public String[] login(String username) throws ClassNotFoundException, SQLException {
		Connection con = DBUtil.getConnection();
		String[] loginCred = new String[2];
		if(con!=null) {
			PreparedStatement ps = con.prepareStatement("SELECT USERID, PASSWORD, ROLE FROM ACCOUNTS WHERE USERID = ?");
			ps.setString(1, username);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				loginCred[0] = rs.getString(2);
				loginCred[1] = rs.getString(3);
				return loginCred;
			}
	    }return null;
	}
}