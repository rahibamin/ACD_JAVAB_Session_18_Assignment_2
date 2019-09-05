<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Welcome to Movie Shop</h2>
<p>Ticket Prices!</p>
<p>1-10 years, the price is $5.00.</p>
<p>11-64 years, the price is $9.500.</p>
<p>65+ years, the price is $7.00.</p>
	<form action="movies.jsp">
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" value=""></td>
			</tr>
			<tr>
				<td>Age:</td>
				<td><input type="text" name="age" value=""></td>
			</tr>
			<tr>
				<td><input type="submit" value="Check Price"></td>
			</tr>
		</table>
	</form>
	<br>
	<%
		String name = request.getParameter("name");
		String s = request.getParameter("age");
		if (name == null && s == null) {
			//when page is first loaded
		} else if (name.length() == 0 || s.length() == 0) {
			//when a field is left blank
	%>
	<b>A field was left empty!</b>
	<%
		} else {
			int age = Integer.valueOf(s);
	%>
		
	<b>Thank you! <%=name%>.
	</b><br />
	<b>Since your age is age is <%=age%>. Your ticket price will be </b>
	
	<%
		if (age > 65) {
	%>
	<b>$7.00.</b>
	<%
		} else if (age < 10) {
	%>
	<b>$5.00.</b>
	<%
		} else {
	%>
	<b>$9.50.</b>
	<%
		}
		}
	%>

</body>
</html>