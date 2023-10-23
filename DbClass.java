package NewPackage;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbClass {

		private static Connection conn;
		public static Connection getConn()
		{
			try 
			{
				String url="com.mysql.jdbc.Driver";
				String dburl="jdbc:mysql://localhost:3306/mydata";
				String uname="root";
				String psw="";
				Class.forName(url);
				conn=DriverManager.getConnection(dburl,uname,psw);
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
				System.out.println("Exception E:"+e.getMessage());	
			}
			return conn;
		}
		 
	
}
