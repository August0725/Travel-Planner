<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<%@page import="java.util.List"%>

<div class="container">
<h1> Recommendation Page </h1>
</div>

<div class="container">
<form action="/itinerary/recommendation/${tripId}" method="get">
    <input type="text" name="id" value="${tripId}" hidden="">
    <div class="form-group">
        <label>Search City</label>
        <input type="text" name="city" required>
    </div>
    <button>Search</button>
</form>
</div>


<br>
<div class="container">
    <a href="/itinerary/home/${tripId}"><button>Back</button></a>
</div>
</body>
</html>