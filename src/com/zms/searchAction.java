package com.zms;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class searchAction extends ActionSupport {
	private String book_name = new String();
	public String ss()
	{
		System.out.println(book_name);
		if(book_name.length()!=0){
			try{
				Connection con = GetConnection.get();
				PreparedStatement stmt = con.prepareStatement("select * from author"+" where name = ?");
				stmt.setString(1, book_name);
				ResultSet row = stmt.executeQuery();
				row.last();
				int rowCount = row.getRow(); //获得ResultSet的总行
				row.first();
				String[] myauthor;
				if(rowCount==0)
				{
					return "add";  //作者不在数据库内，返回add
				}
				else{
					int  number=0;
					myauthor = new String[4];
					for(int i=0;i<4;i++){
						myauthor[i]= row.getString(i+1);
					}
					//int theName = Integer.parseInt(myauthor[0]);   //因为其具备自动强制转化，所以不用设置为整形了
					PreparedStatement stmt1 = con.prepareStatement("select * from book"+" where AuthorID = ?");
					stmt1.setString(1, myauthor[0]);
					ResultSet row1 = stmt1.executeQuery();
					row1.last();
					int rowCountt = row1.getRow(); //获得ResultSet的总行
					String[][] mybook=new String[rowCountt][];
					String[] mytitle = new String[rowCountt];
					row1.first();
					mytitle[0] = row1.getString(2);
					for(int i=0;i<rowCountt;i++){
						mybook[i] = new String[6];
					}
					for(int i=0;i<6;i++){
						System.out.println(number);
						System.out.println(row1.getString(i+1));
						mybook[number][i]= row1.getString(i+1);
					}
				    number++;
					while(row1.next())
					{
						for(int i=0;i<6;i++){
							mybook[number][i]= row1.getString(i+1);
						}
						mytitle[number] = row1.getString(2);
						number++;
					}
					ActionContext.getContext().put("myBo",mybook);
					ActionContext.getContext().put("myAu",myauthor);
					ActionContext.getContext().put("myTi",mytitle);
				return SUCCESS;
				}
			}catch (Exception e) {
				System.out.print("get data error!");
				return "no";
			}
		}
		else
			return "Original";
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

}
