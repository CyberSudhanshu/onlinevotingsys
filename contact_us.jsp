<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<%
   String Name = request.getParameter("Name");
   String Email = request.getParameter("Email");
   String massage = request.getParameter("massage");
      // Register JDBC driver
      Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/residb","root","root");
// Insert the user data into the database
Statement ps = con.createStatement();
int rowsInserted = ps.executeUpdate("insert into contact_us(Name,Email,massage) values('"+Name+"','"+Email+"','"+massage+"')");
if (rowsInserted > 0) {
    out.print("your feedbak record successful!");
    out.print(" thanks for contact us we responce your ans !");

} else {
    out.print("send failed. Please try again.");
}

%>





