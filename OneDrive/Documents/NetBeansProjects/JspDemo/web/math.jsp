<%-- 
    Document   : math
    Created on : Feb 27, 2020, 2:00:06 PM
    Author     : Nemanja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        int a = 0, b = 0, c = 0;
        Object objA = request.getAttribute("a");
        Object objB = request.getAttribute("b");
        Object objC = request.getAttribute("c");
        
        if(objA != null){
            a = Integer.parseInt(objA.toString());
        }
        if(objB != null){
            b = Integer.parseInt(objB.toString());
        }
        if(objC != null){
            c = Integer.parseInt(objC.toString());
        }
        %>
        <h1>Math</h1>
        <form action="/JspDemo/math" method="POST">
            <table>
                <tbody>
                    <tr>
                        <td>A:</td>
                        <td><input type="text" name="a" value="<%=a%>"></td>
                    </tr>
                    <tr>
                        <td>B:</td>
                        <td><input type="text" name="b" value="<%=b%>"></td>
                    </tr>
                    <tr>
                        <td>C:</td>
                        <td><input type="text" name="c" readonly="true" value="<%=c%>"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Addition" name="Addition" /></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
