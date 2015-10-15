<%@page import="com.sun.glass.ui.Size"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ratnakumar.ncra.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hibernate-PostgreSQL</title>
</head>
<body>
	<h2>User Data Insert Form</h2>
	<form action="register.jsp" method="post">
		Name:<input type="text" name="name" /><br> <br /> Password:<input
			type="password" name="password" /><br> <br /> Email ID:<input
			type="text" name="email" /><br> <br /> Country:<input
			type="text" name="country" /><br> <br /> <input type="submit"
			value="register" />
	</form>

	<h2>User Data Query Form</h2>
	<p>Enter any combination of search terms</p>
	<form action="query.jsp" method="post">
		Id:<input type="text" name="id" /><br /> Name:<input type="text"
			name="name" /><br /> Email ID:<input type="text" name="email" /><br />
		Country:<input type="text" name="country" /><br /> <input
			type="submit" value="show" />

	</form>

	<h2>List Data Insert Form</h2>
	<form action="listRegister.jsp" method="post">
		Name:<input type="text" name="name" /><br> <br /> Password:<input
			type="password" name="password" /><br> <br /> Email ID:<input
			type="text" name="email" /><br> <br /> Country:<input
			type="text" name="country" /><br> <br /> <input type="submit"
			value="register" />
	</form>
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Country</th>
			<th>Pwd</th>
		</tr>

		<%
			UserDao udao = new UserDao();
			//udao.showAll();
			List<User> ud = udao.showAll();
			//out.print(ud.size());
			for (int i = 0; i < ud.size(); i++) {
		%>
		<tr>
			<td>
				<%
					out.println(ud.get(i).getId());
				%>
			</td>
			<td>
				<%
					out.println(ud.get(i).getName());
				%>
			</td>
			<td>
				<%
					out.println(ud.get(i).getEmail());
				%>
			</td>
			<td>
				<%
					out.println(ud.get(i).getCountry());
				%>
			</td>
			<td>
				<%
					out.println(ud.get(i).getPassword());
				%>
			</td>
		</tr>
		<%
			}
		%>
	</table>
	
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Country Name</th>
			<th>Country Code</th>
			<th>Short Name</th>
		</tr>

		<%
			ListsDao ldao = new ListsDao();
			//udao.showAll();
			List<Country> ld = ldao.showAllCountry();
			for (int i = 0; i < ld.size(); i++) {
		%>
		<tr>
			<td>
				<%
					out.println(ld.get(i).getId());
				%>
			</td>
			<td>
				<%
					out.println(ld.get(i).getName());
				%>
			</td>
			<td>
				<%
					out.println(ld.get(i).getTelCode());
				%>
			</td>
			<td>
				<%
					out.println(ld.get(i).getShortName());
				%>
			</td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>