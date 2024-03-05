<%@page import="java.util.Set"%>
<%@page import="com.project275.travelplaner.entity.Trip"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Home</title>
</head>
<body>
<h1 style="color:red">${neg}</h1>
<h1 style="color:green">${pos}</h1>
<%
    Set<Trip> trips = (Set<Trip>) request.getAttribute("trips");
%>
<table border="1">
    <tr>
        <th>Trip Name</th>
        <th>Start Date</th>
        <th>End Date</th>
        <th>Budget</th>
        <th>Track Budget</th>
        <th>Edit</th>
        <th>Delete</th>
        <th>Share</th>
        <th>View</th>
    </tr>
    <%
        for (Trip t : trips) {
    %>
    <tr>
        <th><%=t.getName()%></th>
        <th><%=t.getStartDate()%></th>
        <th><%=t.getEndDate()%></th>
        <th><%=t.getBudget()%></th>
        <th><a href="/trip/editBudget/<%=t.getId()%>"><button>Edit Budget</button></a></th>
        <th><a href="/trip/edit/<%=t.getId()%>"><button>Edit</button></a></th>
        <th><a href="/trip/delete/<%=t.getId()%>"><button>Delete</button></a></th>
        <th><a href="/trip/share/<%=t.getId()%>"><button>Share</button></a></th>
        <th><a href="/trip/view/<%=t.getId()%>"><button>View</button></a></th>
    </tr>
    <%
        }
    %>
</table><br>
<a href="/trip/add"><button>Create Travel</button></a>
<a href="/logout"><button>Logout</button></a>
</body>
</html>