<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
<h1>Add Trip Details</h1>
<form action="/trip/add" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label>Name</label>
        <input type="text" name="name" required>
    </div>

    <div class="form-group">
        <label>Budget</label>
        <input type="number" name="budget" step="0.01" required>
    </div>

    <div class="form-group">
        <label>Start Date</label>
        <input type="date" name="start_date" required>
    </div>

    <div class="form-group">
        <label>End Date</label>
        <input type="date" name="end_date" required>
    </div>
    <button>Add</button>
    <button type="reset">Reset</button>

</form>
</div>

<br>
<div class="container">
    <a href="/trip/home"><button>Back</button></a>
</div>
</body>
</html>