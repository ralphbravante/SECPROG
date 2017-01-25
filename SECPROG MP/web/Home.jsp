<%-- 
    Document   : Home
    Created on : 01 11, 17, 3:54:37 PM
    Author     : Beep xD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body align="center">
        <%
            String username = "";
            try{
                username = (String)session.getAttribute("USERNAME");
            }catch(Exception ex){}
            if(username != null){
                if(username.equals("admin")){
        %>
        <h1>Hello Admin!</h1>
        Your username is <%= session.getAttribute("USERNAME") %><br />
        Your password is <%= session.getAttribute("PASSWORD") %>
        <a href="Logout"> LOGOUT </a>
        <%
                }else{
        %>
        <h1>Hello Account :D</h1>
        Your username is <%= session.getAttribute("USERNAME") %><br />
        Your password is <%= session.getAttribute("PASSWORD") %>
        <a href="Logout"> LOGOUT </a>
        <% }
            }else{
        %>
        <h1>Register</h1>
        <form method="post" action="Register">
            <table align="center">
                <tr>
                    <td>
                        Username:
                    </td><td>
                        <input type="text" name="username" /><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td><td>    
                        <input type="password" name="password" /><br/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="REGISTER NOW">
                    </td>
                </tr>
            </table>
        </form>
        
        <br />
        <br />
        
        <h1>Login</h1>
        <form method="post" action="Login">
            <table align="center">
                <tr>
                    <td>
                        Username:
                    </td><td>
                        <input type="text" name="username" /><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td><td>    
                        <input type="password" name="password" /><br/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="LOGIN NOW">
                    </td>
                </tr>
            </table>
        </form>
        <% } %>
    </body>
</html>
