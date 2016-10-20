package com.zms;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class showAction extends ActionSupport {

	// private static String book_name = new String();
	public String showa() {
		try {
			HttpServletRequest request = ServletActionContext.getRequest();
			String book_name = new String(request.getParameter("name"));
			System.out.println(book_name);
			Connection con = GetConnection.get();
			PreparedStatement stmt2 = con.prepareStatement("select * from book" + " where Title = ?");
			stmt2.setString(1, book_name);
			ResultSet row2 = stmt2.executeQuery();
			String[] mybook = new String[6];
			while (row2.next()) {
				for (int i = 0; i < 6; i++) {
					mybook[i] = row2.getString(i + 1);
				}
			}
			// int theName = Integer.parseInt(mybook[2]);
			PreparedStatement stmt3 = con.prepareStatement("select * from author" + " where AuthorID = ?");
			stmt3.setString(1, mybook[2]);
			ResultSet row3 = stmt3.executeQuery();
			String[] myauthor = new String[4];
			String mytitle = new String();
			mytitle = mybook[1];
			while (row3.next()) {
				for (int i = 0; i < 4; i++) {
					myauthor[i] = row3.getString(i + 1);
				}
			}
			ActionContext.getContext().put("myBo", mybook);
			ActionContext.getContext().put("myAu", myauthor);
			ActionContext.getContext().put("myTi", mytitle);
			return SUCCESS;

		} catch (Exception e) {
			System.out.print("wrong data!");
			return "no";
		}
	}

}
