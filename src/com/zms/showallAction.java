package com.zms;
import java.io.UnsupportedEncodingException;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

public class showallAction extends ActionSupport {
	
	private String mybook[]; 
	private int booknumber=0;
    //HttpServletRequest request = ServletActionContext.getRequest();
	public String show() 
	{
		try{
			Connection con = GetConnection.get();
			PreparedStatement stmt = con.prepareStatement("select * from book");
			ResultSet row = stmt.executeQuery();
			row.last();
			int rowCount = row.getRow(); //获得ResultSet的总行
			mybook = new String [rowCount];
	    row.first();
		mybook[0] = row.getString(2);
		booknumber++;
		while(row.next())
		{
			mybook[booknumber] = row.getString(2);
			booknumber++;
		}
		for(int i=0;i<booknumber;i++)
		{
		
				System.out.println(mybook[i]);
		
		}
		//request.setAttribute("my", "mybook");
		//request.setAttribute("number", "booknumber");
		ActionContext.getContext().put("my",mybook); 
		//ServletActionContext.getRequest().setAttribute("my", "mybook"); 
		//HttpServletRequest request;
		//HttpSession session = request.getSession();
		//session.setAttribute("userlist", );
		return SUCCESS;
		}catch (Exception e) {
			System.out.print("get data error!");
			return "no";
		}
	}
	public String[] getMybook() {
		return mybook;
	}
	public void setMybook(String[] mybook) {
		this.mybook = mybook;
	}


}
