
<%@page import="ratnakumar.ncra.*"%>
<%@page import="java.util.*"%>
<jsp:useBean id="obj" class="ratnakumar.ncra.User">
</jsp:useBean>
<jsp:setProperty property="*" name="obj" />
<table border="1">
	<%
		UserDao udao = new UserDao();
		ArrayList<User> ud = udao.showQuery(obj);
		if (ud.size() == 0){
			out.println("no records found");
		} else {
			
			%>
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Email</th>
		<th>Country</th>
		<th>Pwd</th>
	</tr>
	<%
			
			for (int j = 0; j < ud.size(); j++) {
	%>
	<tr>
		<td>
			<%
				out.println(ud.get(j).getId());
			%>
		</td>
		<td>
			<%
				out.println(ud.get(j).getName());
			%>
		</td>
		<td>
			<%
				out.println(ud.get(j).getEmail());
			%>
		</td>
		<td>
			<%
				out.println(ud.get(j).getCountry());
			%>
		</td>
		<td>
			<%
				out.println(ud.get(j).getPassword());
			%>
		</td>
	</tr>
	<%
		}
		}
	%>
</table>
<h2>Update User</h2>
<form action="update.jsp" method="post">
	Id:<input type="text" name="id" /><br> <br /> Name:<input
		type="text" name="name" /><br> <br /> Password:<input
		type="password" name="password" /><br> <br /> Email ID:<input
		type="text" name="email" /><br> <br /> Country:<input
		type="text" name="country" /><br> <br /> <input type="submit"
		value="update" />
</form>