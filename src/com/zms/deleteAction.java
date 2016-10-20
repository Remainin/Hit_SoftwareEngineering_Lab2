package com.zms;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class deleteAction extends ActionSupport {

		public String de(){
			try{
			HttpServletRequest request = ServletActionContext.getRequest();
			String bookname = new String(request.getParameter("name"));
			Connection con = GetConnection.get();
			PreparedStatement stmt = con.prepareStatement("delete from book"+" where Title = ?");
			stmt.setString(1, bookname);
			stmt.executeUpdate();
			return SUCCESS;
		}
		catch (Exception e) {
			System.out.print("wrong data!");
			return "no";}
		}

}
