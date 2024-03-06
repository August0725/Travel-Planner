<%@page import="java.util.*"%>
<%@page import="com.project275.travelplaner.entity.Itinerary"%>
<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
    <h1>Here is your detail plan for the trip ${trip.getName()}. </h1>
</div>

<div class="container">
<%
    List<Itinerary> itineraries = (List<Itinerary>) request.getAttribute("itineraries");
    double totalTransportationExpense = 0.0;
    double totalAccommodationExpense = 0.0;
    double totalMealsExpense = 0.0;
    double totalActivitiesExpense = 0.0;

    for (Itinerary i : itineraries) {
        if (i.getExpenseLog() != null){
            totalTransportationExpense += i.getExpenseLog().getTransportationExpense();
            totalAccommodationExpense += i.getExpenseLog().getAccommodationExpense();
            totalMealsExpense += i.getExpenseLog().getMealsExpense();
            totalActivitiesExpense += i.getExpenseLog().getActivitiesExpense();
        }
    }
%>
<table class="table">
    <tr>
        <th>Itinerary</th>
        <th>Date</th>
        <th>Location</th>
        <th>Attraction</th>
        <th>WeatherForecast</th>
        <th>Detail</th>
        <th>Safety Tips</th>
        <th>Expense Log</th>
        <th></th>
        <th></th>
    </tr>
    <%
        for (Itinerary i : itineraries) {
    %>
    <tr>
        <th><%=i.getName()%></th>
        <th><%=i.getDate()%></th>
        <th><%=i.getLocation()%></th>
        <th><%=i.getAttraction()%></th>
        <th><%=i.getWeatherForecast()%></th>
        <th><%=i.getDetail()%></th>
        <th><%=i.getSafetyTips()%></th>
        <th>
            <!--$<%=i.getExpenseSum()%>-->
            <a href="/itinerary/expenseLog/${tripId}/<%=i.getId()%>">
                <button>Add expense</button>
            </a>
           <!--<a href="/itinerary/expenseLog/edit/${tripId}/<%=i.getId()%>">
                <button>Edit expense</button>
            </a>-->
        </th>
        <th><a href="/itinerary/edit/${tripId}/<%=i.getId()%>"><button>Edit</button></a></th>
        <th><a href="/itinerary/delete/${tripId}/<%=i.getId()%>"><button>Delete</button></a></th>
    </tr>
    <%
        }
    %>
</table>
<br>
<a href="/itinerary/add/${tripId}"><button>Add New Itinerary</button></a>
<a href="/itinerary/search/${tripId}"><button>Recommendations</button></a>
<a href="/trip/home"><button>Back to Trips</button></a>
<!-- Display Total Expenses -->

<h2>Total Expense (Your Budget is:$ ${trip.getBudget()})</h2>
<p>Transportation Expense: <%= totalTransportationExpense %></p>
<p>Accommodation Expense: <%= totalAccommodationExpense %></p>
<p>Meals Expense: <%= totalMealsExpense %></p>
<p>Activities Expense: <%= totalActivitiesExpense %></p>
</div>
</body>
</html>