<%-- 
    Document   : Challenge2hypoForm
    Created on : Feb 2, 2013, 1:29:31 AM
    Author     : Bob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pythagorean Theorem</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script text="text/javascript">
function validateForm()
{
var x=document.forms["formTriangle"]["triA"].value;
var y=document.forms["formTriangle"]["triB"].value;
if (x==null || y==null || x=="" || y=="" || x<0 || y<0 || isNaN(x)==true || isNaN(y)==true)
  {
  alert("Input is invalid.");
  return false;
  }
}
</script>
    </head>
    <body>
        <h1 align="center">Find the Hypotenuse of a Triangle</h1>
        <form id="formTriangle" action="something.do" name="formTriangle" method="POST" onsubmit="return validateForm()">
            
            Side A:  <input type="number" id="triA" name="triA" value='<% if(request.getParameter("triA")!= null){out.print(request.getParameter("triA"));}%>'><br />
            Side B:  <input type="number" id="triB" name="triB" value='<% if(request.getParameter("triB")!= null){out.print(request.getParameter("triB"));}%>'>
         </br></br>
         <input type="submit" value="Calculate">
         </br></br>
        </form>
        <% 
           if (request.getAttribute("Answer")!=null){
             String answer = request.getAttribute("Answer").toString();
             out.println("The hypotenuse is: " + answer);
           }
           
        %>
        <br />
        <br />
        <a href="index.html">Back</a>
    </body>
</html>
