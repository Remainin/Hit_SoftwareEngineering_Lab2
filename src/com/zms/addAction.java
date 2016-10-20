package com.zms;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

public class addAction extends ActionSupport {

	private static String book0 = new String();
	private static String book1 = new String();
	private static String bookauthor = new String();
	private static String book3 = new String();
	private static String book4 = new String();
	private static String book5 = new String();
	
	private static String author1 = new String();
	private static String author2 = new String();
	private static String author3 = new String();
	public String addbook(){
		try{
		System.out.println(book0);
		if(book0.length()!=0 &&book1.length()!=0 
		&&author1.length()!=0 &&book3.length()!=0 
		&&book4.length()!=0 &&book5.length()!=0){
		Connection con = GetConnection.get();
		PreparedStatement stmt = con.prepareStatement("select * from book"+" where ISBN = ?");
		stmt.setString(1, book0);
		ResultSet row = stmt.executeQuery();
		row.last();
		int rowCount = row.getRow();
		if(rowCount >0){
			return "ISBN_error";
		}
		else{
		PreparedStatement stmt1 = con.prepareStatement("select * from author"+" where name = ?");
		stmt1.setString(1, author1);
		ResultSet row1 = stmt1.executeQuery();
		bookauthor = "";
		while(row1.next()){
			bookauthor = row1.getString(1);
			System.out.println("come £º"+bookauthor);
		}
		if(bookauthor.length() == 0){
			return "needAuthor";
		}
		else{
			PreparedStatement stmt2 = con.prepareStatement("insert into book"+" values(?,?,?,?,?,?)");
			stmt2.setString(1, book0);
			stmt2.setString(2, book1);
			stmt2.setString(3, bookauthor);
			stmt2.setString(4, book3);
			stmt2.setString(5, book4);
			stmt2.setString(6, book5);
			stmt2.executeUpdate();
			return SUCCESS;
		}
		}	
		}
		else{
			return "not_enough";
		}
		}catch (Exception e) {
			System.out.print("wrong data!");
			return "no";}
	}
	public String addauthor() {
		try{
		if(bookauthor.length()!=0 &&author2.length()!=0 
		&&author3.length()!=0){
			
			System.out.println(bookauthor);
			Connection con = GetConnection.get();
			PreparedStatement stmt4 = con.prepareStatement("select * from author"+" where AuthorID = ?");
			stmt4.setString(1, bookauthor);
			ResultSet row4 = stmt4.executeQuery();
			row4.last();
			int rowCounttt = row4.getRow();
			if(rowCounttt >0){
				return "authorID_error";
			}else{
			PreparedStatement stmt = con.prepareStatement("insert into author"+" values(?,?,?,?)");
			stmt.setString(1, bookauthor);
			stmt.setString(2, author1);
			stmt.setString(3, author2);
			stmt.setString(4, author3);
			stmt.executeUpdate();
			PreparedStatement stmt2 = con.prepareStatement("insert into book"+" values(?,?,?,?,?,?)");
			stmt2.setString(1, book0);
			stmt2.setString(2, book1);
			stmt2.setString(3, bookauthor);
			stmt2.setString(4, book3);
			stmt2.setString(5, book4);
			stmt2.setString(6, book5);
			stmt2.executeUpdate();
			return SUCCESS;
	}
		}
		else{
			return "not_enoug";
		}
		}catch (Exception e) {
			System.out.print("wrong data!");
			return "no";}
	}
	public String addask(){
		return SUCCESS;
	}
	public String addauthorask(){
		return SUCCESS;
	}
	public String getBook0() {
		return book0;
	}
	public void setBook0(String book0) {
		this.book0 = book0;
	}
	public String getBook1() {
		return book1;
	}
	public void setBook1(String book1) {
		this.book1 = book1;
	}
	public String getBook3() {
		return book3;
	}
	public void setBook3(String book3) {
		this.book3 = book3;
	}
	public String getBook4() {
		return book4;
	}
	public void setBook4(String book4) {
		this.book4 = book4;
	}
	public String getBook5() {
		return book5;
	}
	public void setBook5(String book5) {
		this.book5 = book5;
	}
	public String getAuthor1() {
		return author1;
	}
	public void setAuthor1(String author1) {
		this.author1 = author1;
	}
	public String getAuthor2() {
		return author2;
	}
	public void setAuthor2(String author2) {
		this.author2 = author2;
	}
	public String getAuthor3() {
		return author3;
	}
	public void setAuthor3(String author3) {
		this.author3 = author3;
	}
	public String getBookauthor() {
		return bookauthor;
	}
	public void setBookauthor(String bookauthor) {
		this.bookauthor = bookauthor;
	}
	
	
}
