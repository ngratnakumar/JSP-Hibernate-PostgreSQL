    <%@page import="ratnakumar.ncra.*"%>  
    <%@page import="java.util.*"%> 
    <jsp:useBean id="obj" class="ratnakumar.ncra.User">  
    </jsp:useBean>  
    <jsp:setProperty property="*" name="obj"/>  
      
    <%  
	    int i=UserDao.register(obj);  
	    if(i>0)  
	    out.print("Data inserted!");  
    %>  
    
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
			List<User> ud = udao.showAll();
			for(int j = 0; j < ud.size() ; j++) {
		%>
		<tr>
			<td>
				<%  out.println(ud.get(j).getId()); 	%> </td><td>
				<%	out.println(ud.get(j).getName()); 	%> </td><td>
				<%	out.println(ud.get(j).getEmail()); 	%> </td><td>
				<%	out.println(ud.get(j).getCountry()); 	%> </td><td>
				<%	out.println(ud.get(j).getPassword()); 	%> 
			</td>
		</tr>
		<% } %>
	</table>