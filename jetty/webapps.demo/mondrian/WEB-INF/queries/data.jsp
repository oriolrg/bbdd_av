<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" jdbcDriver="org.postgresql.Driver" jdbcUrl="jdbc:postgresql://localhost:5432/cadastre?user=oriol&password=29051984"
catalogUri="/WEB-INF/queries/inmoble.xml">

select {[Data].[All Data]} ON COLUMNS
from [Inmoble] 
</jp:mondrianQuery>





<c:set var="title01" scope="session">Persones </c:set>

