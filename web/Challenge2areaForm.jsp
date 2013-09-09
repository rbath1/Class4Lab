<%-- 
    Document   : Challenge2areaForm
    Created on : Feb 2, 2013, 12:00:25 AM
    Author     : Bob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <title>Area of a Rectangle</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script text="text/javascript">
function validateForm()
{
var x=document.formArea.length.value;
var y=document.formArea.width.value;
if (x==null || y==null || x=="" || y=="" || x<0 || y<0 || isNaN(x)==true || isNaN(y)==true)
  {
  alert("Input is invalid.");
  return false;
  }
 
}

</script>
    </head>
    <body>
         <h1 align="center">Calculate Area of a Rectangle/Square</h1>
        <form id="formArea" action="something.do" name="formArea" method="POST" onsubmit="return validateForm()">
            
            length: <input type="number" id="length" name="length" placeholder="" value='<% if (request.getParameter("width")!= null){out.print(request.getParameter("length"));}%>'><br />
            width: <input type="number" id="width" name="width" placeholder="" value='<% if (request.getParameter("width")!= null){out.print(request.getParameter("width"));} %>'>
         </br></br>
         <input type="submit" value="Calculate">
         </br></br>
        </form>
        <% 
           if (request.getAttribute("Answer")!=null){
             String answer = request.getAttribute("Answer").toString();
             out.println("The Area is: " + answer);
           }
           
        %>
        
        <br />
        <br />
        <a href="index.html">Back</a>
    </body>
</html>
