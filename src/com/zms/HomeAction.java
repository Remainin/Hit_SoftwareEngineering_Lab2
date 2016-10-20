package com.zms;
import java.sql.*;

import com.opensymphony.xwork2.ActionSupport;



public class HomeAction extends ActionSupport {


	/*private User user;
	public String show()
	{
		try{
		GetConnection con = new GetConnection();
		user.setMy_connection(con.get());
		PreparedStatement stmt = user.getMy_connection().prepareStatement("select * from book");
		ResultSet row = stmt.executeQuery();
		user.setBook_number(0);
		while(row.next())
		{
			MyBook temp =new MyBook();
			temp.per[0] = row.getString(1);
			temp.per[1] = row.getString(2);
			temp.per[2] = row.getString(3);
			temp.per[3] = row.getString(4);
			temp.per[4] = row.getString(5);
			temp.per[5] = row.getString(6);
			user.setMybook(temp,user.getBook_number());
			user.addBook_number();
		}
		for(int i=0;i<user.getBook_number();i++)
		{
			for (int j=0;j<6;j++)
			{
				System.out.println(user.getMybook()[i].per[j]);
			}
		}
		return SUCCESS;
		}catch (Exception e) {
			System.out.print("get data error!");
			e.printStackTrace();
			return "no";
		}
	}*/

	public String execute() throws Exception {
		System.out.println("begin successfully!");
		return SUCCESS;
	}

	
	//public User getUser() {
	//	return user;
	//}
	//public void setUser(User user) {
	//	this.user = user;
	//}

}
