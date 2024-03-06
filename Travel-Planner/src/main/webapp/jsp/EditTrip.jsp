<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
<h1>Edit Trip Details</h1>
<form action="/trip/update" method="post">
    <input type="text" name="id" value="${trip.getId()}" hidden="">
    <div class="form-group">
        <label>Name</label>
        <input type="text" name="name" value="${trip.getName()}" required>
    </div>

    <div class="form-group">
        <label>Budget</label>
        <input type="number" name="budget" step="0.01" value="${trip.getBudget()}">
    </div>

    <div class="form-group">
        <label>Start Date</label>
        <input type="date" name="start_date" value="${trip.getStartDate()}" required>
    </div>

    <div class="form-group">
        <label>End Date</label>
        <input type="date" name="end_date" value="${trip.getEndDate()}" required>
    </div>

    <button>Update</button>
    <button type="reset">Reset</button>
</form>
</div>

<div class="container">
<a href="/trip/home"><button>Back to Trips</button></a>
</div>

</body>
</html>