<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  
 <p>
 
  esempi  tag c: out 
 
  <br>
 
<c:set var="Income" scope="session" value="${4000*4}"/>  
<c:out value="${Income}"/>

<br>

<c:out value="${'<tag> , &'}"/>

 </br>
  esempio remove
  
 <c:set var="salary" scope="session" value="${2000*2}"/>
<p>Before Remove Value: <c:out value="${salary}"/></p>
<c:remove var="salary"/>
<p>After Remove Value: <c:out value="${salary}"/></p>
  

  
  </br>
  esempio catch-cattura
  <c:catch var ="catchException">
   <% int x = 5/0;%>
</c:catch>

<c:if test = "${catchException != null}">
   <p>The exception is : ${catchException} <br />
   There is an exception: ${catchException.message}</p>
</c:if>
</br>
  esempio if  
<c:set var="salary" scope="session" value="${2000*2}"/>
<c:if test="${salary > 2000}">
   <p>My salary is: <c:out value="${salary}"/><p>
</c:if>

 </br>
 
  
 esempio for forEach
<c:forEach var="i" begin="1" end="5">
   Item <c:out value="${i}"/><p>
</c:forEach>
 
 </br>
 esempio choose e when  
 <c:set var="salary" scope="session" value="${2000*2}"/>
<p>Your salary is : <c:out value="${salary}"/></p>
<c:choose>
    <c:when test="${salary <= 0}">
       Salary is very low to survive.
    </c:when>
    <c:when test="${salary > 1000}">
        Salary is very good.
    </c:when> 
 </c:choose>  
 
  </br>
 
   esempio import  
 <c:import var="data" url="http://www.tutorialspoint.com"/>
<c:out value="${data}"/>
   
   </br>
  esempio param-aggiungere parametri da url   
  <c:url value="/index.jsp" var="myURL">
   <c:param name="trackingId" value="1234"/>
   <c:param name="reportType" value="summary"/>
</c:url>
<c:import url="${myURL}"/> 
  </br>
 esempio redirect-indirizzare altra url
  <c:redirect url="http://www.photofuntoos.com"/>
  </br>
 esempio url-creare nuova url con query 
  <a href="<c:url value="/jsp/index.htm"/>">TEST</a>
</body>
    </br>
   
   
   
   
   
   
<p>





</body>
</html>