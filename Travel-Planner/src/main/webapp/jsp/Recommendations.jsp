<%@page import="java.util.List"%>
<%@page import="com.project275.travelplaner.entity.Recommendation"%>
<%@page import="com.project275.travelplaner.entity.Itinerary"%>
<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
<%--<h2>Recommendations for ${city}</h2>--%>
<h2>Recommendations</h2>
</div>

<div class="container">
<%
    List<Recommendation> recommendations = (List<Recommendation>) request.getAttribute("recommendations");
%>
<table class="table">
    <tr>
        <th>Recommendation</th>
        <th>Select</th>
    </tr>
    <%
        for (Recommendation recommendation : recommendations) {
    %>
    <tr>
        <td><%= recommendation.getRecommendation() %></td>
        <td><a href="/itinerary/generate/${tripId}/<%=recommendation.getId()%>"><button>Confirm</button></a></td>
    </tr>
    <%
        }
    %>
</table>
</div>
<br>
<div class="container">
    <a href="/itinerary/home/${tripId}"><button>Back</button></a>
</div>
</body>
</html>
