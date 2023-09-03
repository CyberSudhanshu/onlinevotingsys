<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<%
   String txtemail = request.getParameter("txtemail");
   String txtpass = request.getParameter("txtpass");

      // Register JDBC driver
      Class.forName("com.mysql.jdbc.Driver");

      // Open a connection
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/residb","root","root");

      // Create a statement
      Statement stmt = con.createStatement();

      // Execute a query
      String sql;
      sql = ("SELECT * FROM user_reg WHERE txtemail='" + txtemail + "' AND txtpass='" +txtpass+ "'");
      ResultSet rs = stmt.executeQuery(sql);

      // Check if user pass valid
      if (rs.next()) {
         // Redirect to the home page if login is successful
         response.sendRedirect("home.html");
      } else {

         out.println("Invalid username or password try again");
      }

%>





