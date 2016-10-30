# 哈工大计算机学院-软件工程-实验2（图书馆管理系统）

### 说明：

实现代码为Java，报告中的附加功能全部实现，代码和sql下载后，需要吧sql文件导入本地数据库，我的数据库名为“bookdb”，两个表名分别为“author”和“book”，同时在Eclipse中连接数据库的时候请与自己本地的环境做对应，以及需要配置tomcat和struts2，配置教程可以参考我的报告。Java代码如果在你的IDE中不可用，可调试环境（JRE System Library），大多数条件下只需更改JDK的版本即可以运行(我的JDK版本为jdk1.8.0_45，如果你的版本过久请下载该jdk1.8后再使用，过新的jdk版本一般不需要，版本更新一般向下兼容)，如果你电脑中有jdk1.8，可以直接在项目Configure Build Path中的Libraries中修改运行环境即可，否则下载jdk1.8后具体调试方法，请点击[这里](https://jingyan.baidu.com/article/6dad5075122d05a123e36ed4.html)。<br><br>
注：友情附赠报告一份，学习学妹们可以适当参考，觉得有帮助的Star一下，如果有疑问或代码不好用欢迎随时骚扰我：zhangmingshuai3@qq.com

### 实验目标：<br>
掌握MVC架构下的SaaS开发的基本流程
在Eclipse中配置Struts开发环境，开发一个小型SaaS，在Web页面中 对数据库中的数据进行CRUD操作； 
部署在SAE上并对外发布，模拟用户访问。
	
### 实验要求：<br>

>使用MySQL建立一个图书数据库BoodDB，包含两张表Book和author。<br>
>Book {ISBN (PK), Title, AuthorID (FK), Publisher, PublishDate, Price}<br>
>Author {AuthorID (PK), Name, Age, Country}<br>

>#### 功能需求：<br>
>– 输入作者名字，查询该作者所著的全部图书的题目；<br>
>– 当用户点击某本图书的题目时，展示图书详细信息和作者详细信息；<br>
> – 当用户点击“删除”按钮时，将对应行的图书从数据表中删除；<br>
>–  用户可新增一本图书，若该书作者不在库中，还需增加新作者；<br>
>–  用户可更新一本图书的作者、出版社、出版日期、价格。 <br>

>#### 性能需求：<br>
>– 页面的美观性。<br>


具体要求请见`“Lab2实验手册.pdf”`。
