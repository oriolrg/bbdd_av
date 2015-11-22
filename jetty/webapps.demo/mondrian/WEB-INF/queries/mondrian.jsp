<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" jdbcDriver="org.postgresql.Driver" jdbcUrl="jdbc:derby:classpath:/foodmart" catalogUri="/WEB-INF/queries/FoodMart.xml"
   jdbcUser="sa" jdbcPassword="sa" connectionPooling="false">
select {[Measures].[persones]} on columns
 from Inmoble
</jp:mondrianQuery>





<c:set var="title01" scope="session">Test Query uses Mondrian OLAP</c:set>
