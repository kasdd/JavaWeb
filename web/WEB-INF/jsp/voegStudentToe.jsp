<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML>
<html >
    <head>
        <spring:url value="/css/style.css" var="urlCss"/>
        <link rel="stylesheet" href="${urlCss}" type="text/css" /> 
        <title>Students</title>
    </head>
    <body>
        <h2>Voeg student toe</h2>
        <spring:url value ="/students/" var="showUrl"/>
        <form:form method="POST" action="${showUrl}voegStudentToe.htm" modelAttribute="student">

            <p><label>Voornaam:</label>
                <form:input path="firstname" size = "20"/>&nbsp;
                <form:errors path="firstname" cssClass="error"/>
            </p>
            <p><label>Familienaam:</label>
                <form:input path="lastname" size = "20"/>&nbsp;
                <form:errors path="lastname" cssClass="error"/>
            </p>
            <p><label>Email:</label>
                <form:input path="email" size = "20"/>&nbsp;
                <form:errors path="email" cssClass="error"/>
            </p>
            <p>
                <input type="submit" value="OK" />           
            </p>
        </form:form>
        <br>
    </body>
</html>