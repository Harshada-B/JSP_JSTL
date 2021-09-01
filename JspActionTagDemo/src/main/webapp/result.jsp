<% 
 
    String result=request.getParameter("result");
    String submit=request.getParameter("submit");
 %>
 <html><body>
 <%
    if(submit.equals("Add")){
 %>
  Result Of Add : <%=result%>
  <%}
    else{
 %>  
 Result Of sub :  <%=result%>
 <%}%>

 <jsp:include page="/home.html"></jsp:include>

 </body>
 </html>

