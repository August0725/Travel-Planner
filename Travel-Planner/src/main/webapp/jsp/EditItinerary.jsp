<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
<h1>Edit Itinerary Details</h1>
<form action="/itinerary/update/${tripId}" method="post" enctype="multipart/form-data">
    <input type="text" name="id" value="${itinerary.getId()}" hidden="">
    <input type="text" name="expenseSum" value="${itinerary.getExpenseSum()}" hidden="">
    <div class="form-group">
        <label>Name</label>
        <input type="text" name="name" value="${itinerary.getName()}" required>
    </div>
    <div class="form-group">
        <label>Date</label>
        <input type="date" name="idate" value="${itinerary.getDate()}" required>
    </div>
    <div class="form-group">
        <label>Location</label>
        <input type="text" name="location" value="${itinerary.getLocation()}" required>
    </div>
    <div class="form-group">
        <label>Attraction</label>
        <input type="text" name="attraction" value="${itinerary.getAttraction()}" required>
    </div>
    <div class="form-group">
        <label>WeatherForecast</label>
        <select name="weatherForecast">
            <option value="" ${itinerary.getWeatherForecast() eq '' ? 'selected' : ''}>Select Weather</option>
            <option value="Sunny" ${itinerary.getWeatherForecast() eq 'Sunny' ? 'selected' : ''}>Sunny</option>
            <option value="Cloudy" ${itinerary.getWeatherForecast() eq 'Cloudy' ? 'selected' : ''}>Cloudy</option>
            <option value="Rainy" ${itinerary.getWeatherForecast() eq 'Rainy' ? 'selected' : ''}>Rainy</option>
            <option value="Snowy" ${itinerary.getWeatherForecast() eq 'Snowy' ? 'selected' : ''}>Snowy</option>
        </select>
    </div>
    <div class="form-group">
        <label>Detail</label>
        <input type="text" name="detail" value="${itinerary.getDetail()}" required>
    </div>
    <div class="form-group">
        <label>Safety Tips</label>
        <input type="text" name="safetyTips" value="${itinerary.getSafetyTips()}" required>
    </div>

    <button>Update</button>
    <button type="reset">Reset</button>
</form>
</div>
<br>
<div class="container">
<a href="/itinerary/home/${tripId}"><button>Back to Itineraries</button></a>
</div>

</body>
</html>