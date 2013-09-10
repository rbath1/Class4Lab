<%-- 
    Document   : AllCalc
    Created on : Sep 9, 2013, 9:16:41 PM
    Author     : rbath1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script text="text/javascript">
function validateRect()
{
var x=document.formArea.length.value;
var y=document.formArea.width.value;
if (x==null || y==null || x=="" || y=="" || x<0 || y<0 || isNaN(x)==true || isNaN(y)==true)
  {
  alert("Input is invalid.");
  return false;
  }
 
}
function validateCirc()
{
var x=document.forms["formCircle"]["radius"].value;
if (x==null || x=="" || x<0 || isNaN(x)==true)
  {
  alert("Input is invalid.");
  return false;
  }
}
function validateHypo()
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
         <h1 align="left">Calculate Area of a Rectangle/Square</h1>
         <h3 align="center"><% 
           if (request.getAttribute("Answer")!=null){
             String answer = request.getAttribute("Answer").toString();
             out.println("The Answer is: " + answer);
           }
           
        %></h3>
         <form id="formArea" action="something.do" name="formArea" method="GET" onsubmit="return validateRect()">
            
            length: <input type="number" id="length" name="length" placeholder="" value='<% if (request.getParameter("length")!= null){out.print(request.getParameter("length"));}%>'><br />
            width:  <input type="number" id="width" name="width" placeholder="" value='<% if (request.getParameter("width")!= null){out.print(request.getParameter("width"));} %>'>
         </br></br>
         <input type="submit" value="Calculate">
        </form>     
        <br /><br />
        
        <h1 align="left">Calculate Area of a Circle</h1>
         <form id="formCircle" action="something.do" name="formCircle" method="GET" onsubmit="return validateCirc()">
            radius: <input type="number" id="radius" name="radius" value='<% if(request.getParameter("radius")!= null){out.print(request.getParameter("radius"));}%>'><br />
         </br></br>
         <input type="submit" value="Calculate">
        </form>
        <br /><br />
        
        <h1 align="left">Find the Hypotenuse of a Triangle</h1>
        <form id="formTriangle" action="something.do" name="formTriangle" method="GET" onsubmit="return validateHypo()">
            Side A:  <input type="number" id="triA" name="triA" value='<% if(request.getParameter("triA")!= null){out.print(request.getParameter("triA"));}%>'><br />
            Side B:  <input type="number" id="triB" name="triB" value='<% if(request.getParameter("triB")!= null){out.print(request.getParameter("triB"));}%>'>
         </br></br>
         <input type="submit" value="Calculate">
        </form>
        <br /><br />
        
        <a href="index.html">Back</a>
    </body>
</html>