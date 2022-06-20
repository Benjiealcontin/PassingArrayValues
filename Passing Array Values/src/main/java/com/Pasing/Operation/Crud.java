package com.Pasing.Operation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Crud {

	private final static String url = "jdbc:mysql://localhost:3306/arrayvalues";
	private final static String user = "root";
	private final static String password = "";
	private final static String dbloader = "com.mysql.jdbc.Driver";
	private final static String add = "INSERT INTO `arrayvalues`(`data`) VALUES (?)";

	public static void Driver(String dbloader) {
		try {
			Class.forName(dbloader);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public static Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(url, user, password);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;

	}

	public static int Adddata(Model mod) {
		int i = 0;
		try {
			Driver(dbloader);
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement(add);
			pst.setString(1, mod.getData());

			i = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;

	}
}
