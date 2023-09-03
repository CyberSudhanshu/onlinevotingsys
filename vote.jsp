<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
String candidate = request.getParameter("candidate");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/residb","root","root");
// Insert the user data into the database
Statement ps = con.createStatement();
int rowsInserted = ps.executeUpdate("insert into vote_info(candidate) values('"+candidate+"')");
if (rowsInserted > 0) {
    out.print("vote given successful!");
    out.print(" thanks for vote !");
     response.sendRedirect("dashboard.html");
} else {
    out.print("Registration failed. Please try again.");
}

%>
