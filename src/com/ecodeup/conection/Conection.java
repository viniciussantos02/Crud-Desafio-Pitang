package com.ecodeup.conection;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

public class Conection {
	private static BasicDataSource dataSource = null;
	
	private static DataSource getDataSource() {
		if (dataSource == null) {
			dataSource = new BasicDataSource();
			dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
			dataSource.setUsername("root");
			dataSource.setPassword("281819");
			dataSource.setUrl("jdbc:mysql://localhost:3306/crud?useTimezone=true&serverTimezone=UTC&useSSL = false");
			dataSource.setInitialSize(50);
			dataSource.setMaxIdle(100);
			dataSource.setMaxTotal(70);
			dataSource.setMaxWaitMillis(5000);
		}
		return dataSource;
	}
	
	public static Connection getConnection() throws SQLException {
		return getDataSource().getConnection();
		
	}
	
}