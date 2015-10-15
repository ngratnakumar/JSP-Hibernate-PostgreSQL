
<%@page import="ratnakumar.ncra.*"%>
<%@page import="java.util.*"%>
<jsp:useBean id="obj" class="ratnakumar.ncra.User">
</jsp:useBean>
<jsp:setProperty property="*" name="obj" />
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
		udao.updateUser(obj.getId(), obj.getName(), obj.getEmail(), obj.getPassword(), obj.getCountry());
		ArrayList<User> ud = udao.showAll();
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
	%>
</table>

