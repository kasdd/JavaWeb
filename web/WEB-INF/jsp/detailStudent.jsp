<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html >
    <head>
        <spring:url value="/css/style.css" var="urlCss"/>
        <link rel="stylesheet" href="${urlCss}" type="text/css" /> 
        <title>Students</title>
    </head>
    <body>
        <h2>Student detail</h2>
        <p>${student.firstname}	</p>
        <p>${student.lastname}	</p>
        <p>${student.email}	</p>
        <br>
    </body>
</html>