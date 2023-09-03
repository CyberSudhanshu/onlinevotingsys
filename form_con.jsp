<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
String txtfname = request.getParameter("txtfname");
String txtlname = request.getParameter("txtlname");
String txtemail = request.getParameter("txtemail");
String txtpass = request.getParameter("txtpass");
String gen = request.getParameter("gen");
String aadhar_no = request.getParameter("aadhar_no");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/residb","root","root");
// Insert the user data into the database
Statement ps = con.createStatement();
int rowsInserted = ps.executeUpdate("insert into user_reg(txtfname,txtlname,txtemail,txtpass,gen,aadhar_no) values('"+txtfname+"','"+txtlname+"','"+txtemail+"','"+txtpass+"','"+gen+"','"+aadhar_no+"')");
if (rowsInserted > 0) {
    out.print("Registration as user successful!");
    out.print(" GO FOR VOTE !");

} else {
    out.print("Registration failed. Please try again.");
}

%>

