<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
<h1>Add Itinerary Details</h1>
<form action="/itinerary/add/${tripId}" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label>Name</label>
        <input type="text" name="name" required>
    </div>
    <div class="form-group">
        <label>Date</label>
        <input type="date" name="idate" required>
    </div>
    <div class="form-group">
        <label>Location</label>
        <input type="text" name="location" required>
    </div>
    <div class="form-group">
        <label>Attraction</label>
        <input type="text" name="attraction">
    </div>
    <div class="form-group">
        <label>WeatherForecast</label>
        <select name="weatherForecast">
            <option value="">Select Weather</option>
            <option value="Sunny">Sunny</option>
            <option value="Cloudy">Cloudy</option>
            <option value="Rainy">Rainy</option>
            <option value="Snowy">Snowy</option>
        </select>
    </div>
    <div class="form-group">
        <label>Detail</label>
        <input type="text" name="detail">
    </div>
    <div class="form-group">
        <label>Safety Tips</label>
        <input type="text" name="safetyTips">
    </div>
    <button>Add</button>
    <button type="reset">Reset</button>
</form>
</div>
<div class="container">
<a href="/itinerary/home/${tripId}"><button>Back to Itineraries</button></a>
</div>
</body>
</html>