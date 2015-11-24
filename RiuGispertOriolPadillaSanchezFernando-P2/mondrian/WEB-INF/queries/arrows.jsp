<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<%--
  the values for "arrow=xxx" are the names of the images jpivot/jpivot/table/arrow-xxx.gif
--%>


<jp:mondrianQuery id="query01" 
jdbcDriver="org.postgresql.Driver" 
jdbcUrl="jdbc:derby:classpath:/foodmart" catalogUri="/WEB-INF/queries/inmoble.xml"
jdbcUser="sa" jdbcPassword="sa" connectionPooling="false">

select {[Measures].[persones]} on columns
 from Inmoble
</jp:mondrianQuery>

<c:set var="title01" scope="session">Arrows</c:set>