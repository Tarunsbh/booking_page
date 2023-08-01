<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Booking Engine</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container mt-5">
		<h2>Booking Engine</h2>
		<form action="/addbooking" method="POST">
			<!-- Check-in and Checkout Date -->
			<div class="row mt-4">
				<div class="col-md-6">
					<label for="checkInDate">Check-in Date:</label> <input type="date"
						class="form-control datepicker" id="checkInDate"
						name="checkInDate" required>
				</div>
				<div class="col-md-6">
					<label for="checkOutDate">Checkout Date:</label> <input type="date"
						class="form-control datepicker" id="checkOutDate"
						name="checkOutDate" required>
				</div>
			</div>
			<!-- Room Details -->
			<div class="row mt-4">
				<div class="col-md-4">
					<label for="roomCategory">Room Category:</label> <select
						class="form-select" id="roomCategory" name="roomCategory">
						<option value="Standard">Standard</option>
						<option value="Deluxe">Deluxe</option>
						<option value="Suite">Suite</option>
					</select>
				</div>
				<div class="col-md-4">
					<label for="ratePlan">Rate Plan:</label> <select
						class="form-select" id="ratePlan" name="ratePlan">
						<option value="Room Only">Room Only</option>
						<option value="Bed and Breakfast">Bed and Breakfast</option>
						<option value="Half Board">Half Board</option>
						<option value="Full Board">Full Board</option>
					</select>
				</div>
				<div class="col-md-2">
					<label for="adults">Adults:</label> <select class="form-select"
						id="adults" name="adults">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>
				</div>
				<div class="col-md-2">
					<label for="child">Child:</label> <select class="form-select"
						id="child" name="child">
						<option value="0">0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
					</select>
				</div>
			</div>

			<!-- Add Room Button -->
			<div class="row mt-4">
				<div class="col-md-12">
					<button type="button" class="btn btn-primary" onclick="addRoom()">Add
						New Room</button>
				</div>
			</div>

			<!-- Guest Details for Each Room -->
			<div id="roomsContainer" class="mt-4">
				<!-- Rooms will be dynamically added here -->
			</div>

			<!-- Guest Details -->
			<div class="row mt-4">
				<div class="col-md-6">
					<label for="firstName">First Name:</label> <input type="text"
						class="form-control" id="firstName" name="firstName" required>
				</div>
				<div class="col-md-6">
					<label for="lastName">Last Name:</label> <input type="text"
						class="form-control" id="lastName" name="lastName" required>
				</div>
			</div>
			<div class="row mt-4">
				<div class="col-md-6">
					<label for="emailId">Email:</label> <input type="email"
						class="form-control" id="emailId" name="emailId" required>
				</div>
				<div class="col-md-6">
					<label for="phoneNumber">Phone Number:</label> <input type="text"
						class="form-control" id="phoneNumber" name="phoneNumber" required>
				</div>
			</div>
			<div class="row mt-4">
				<div class="col-md-6">
					<label for="city">City:</label> <input type="text"
						class="form-control" id="city" name="city" required>
				</div>
				<div class="col-md-6">
					<label for="state">State:</label> <input type="text"
						class="form-control" id="state" name="state" required>
				</div>
			</div>
			<div class="row mt-4">
				<div class="col-md-6">
					<label for="country">Country:</label> <input type="text"
						class="form-control" id="country" name="country" required>
				</div>
				<div class="col-md-6">
					<label for="expectedArrivalTime">Expected Arrival Time:</label> <input
						type="time" class="form-control" id="expectedArrivalTime"
						name="expectedArrivalTime" required>
				</div>
			</div>

			<!-- Book Now Button -->
			<div class="row mt-4">
				<div class="col-md-12">
					<button type="submit" class="btn btn-success">Book Now</button>
				</div>
			</div>
		</form>
	</div>

	<!-- Bootstrap JS (Optional if not used elsewhere) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Custom JavaScript -->
	<script>
    let roomCount = 1;

    function addRoom() {
      const roomsContainer = document.getElementById("roomsContainer");

      const roomDiv = document.createElement("div");
      roomDiv.className = "row mt-4";
      roomDiv.innerHTML = `
        <div class="col-md-4">
          <label for="roomCategory${roomCount}">Room Category:</label>
          <select class="form-select" id="roomCategory${roomCount}" name="roomCategory${roomCount}">
            <option value="Standard">Standard</option>
            <option value="Deluxe">Deluxe</option>
            <option value="Suite">Suite</option>
          </select>
        </div>
        <div class="col-md-4">
          <label for="ratePlan${roomCount}">Rate Plan:</label>
          <select class="form-select" id="ratePlan${roomCount}" name="ratePlan${roomCount}">
            <option value="Room Only">Room Only</option>
            <option value="Bed and Breakfast">Bed and Breakfast</option>
            <option value="Half Board">Half Board</option>
            <option value="Full Board">Full Board</option>
          </select>
        </div>
        <div class="col-md-2">
          <label for="adults${roomCount}">Adults:</label>
          <select class="form-select" id="adults${roomCount}" name="adults${roomCount}">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
          </select>
        </div>
        <div class="col-md-2">
          <label for="child${roomCount}">Child:</label>
          <select class="form-select" id="child${roomCount}" name="child${roomCount}">
            <option value="0">0</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
          </select>
        </div>
      `;

      roomsContainer.appendChild(roomDiv);

      roomCount++;
    }
  </script>
</body>
</html>

