<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Member Management</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">		
    <link rel="stylesheet" href="css/mainstyle.css">
    <link rel="stylesheet" href="css/member.css">
</head>
<body>
    <!-- Background Image -->
    <div class="background-image"></div>

	<!-- Add this HTML for confirmation dialog -->
	<div class="logout-confirm">
		<p>Are you sure you want to logout?</p>
		<div class="confirm-buttons">
			<button class="confirm-btn yes">Yes, Logout</button>
			<button class="confirm-btn no">Cancel</button>
		</div>
	</div>

	<!-- Modified Header Section -->
	<%@ include file="modifiedHeader.jsp" %>
	
	<!-- Navigation -->
	<%@ include file="dynamicNavigation.jsp" %>
    <!-- Main Content Section -->
    <main>
        <div class="content-wrapper">
            <!-- Wrap the heading and form inside a section -->
            <section>
                <h2>Member Management</h2>

                <!-- Member Form -->
                <form>
                    <div class="form-group">
                        <label for="ownerOfFund">Finance Type:</label>
                        <select id="ownerOfFund" class="input-field" required>
                            <option value="" disabled selected>Finance Type</option>
                            <option value="chunksFinance">Chunks Finance</option>
                            <option value="onamFund">Onam Fund</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" id="name" class="input-field" placeholder="Enter member name" required>
                    </div>

                    <div class="form-group">
                        <label for="dob">Date of Birth:</label>
                        <input type="date" id="dob" class="input-field" required>
                    </div>

                    <div class="form-group">
                        <label for="mobile">Mobile:</label>
                        <input type="tel" id="mobile" class="input-field" placeholder="Enter mobile number" required>
                    </div>

                    <div class="form-group">
                        <label for="email">Email/Login:</label>
                        <input type="email" id="email" class="input-field" placeholder="Enter email" required>
                    </div>

                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" id="password" class="input-field" placeholder="Enter password" required>
                    </div>

                    <div class="form-group">
                        <label for="address1">Address 1:</label>
                        <input type="text" id="address1" class="input-field" placeholder="Enter address" required>
                    </div>

                    <div class="form-group">
                        <label for="area">Area/Place:</label>
                        <input type="text" id="area" class="input-field" placeholder="Enter area" required>
                    </div>

                    <div class="form-group">
                        <label for="taluk">Taluk:</label>
                        <input type="text" id="taluk" class="input-field" placeholder="Enter taluk" required>
                    </div>

                    <div class="form-group">
                        <label for="district">District:</label>
                        <input type="text" id="district" class="input-field" placeholder="Enter district" required>
                    </div>

                    <div class="form-group">
                        <label for="state">State:</label>
                        <input type="text" id="state" class="input-field" placeholder="Enter state" required>
                    </div>

                    <div class="form-group">
                        <label for="pin">PINCode:</label>
                        <input type="text" id="pin" class="input-field" placeholder="Enter PINCode" required>
                    </div>

                    <!-- Button Group for Save, Update, Delete -->
                    <div class="button-group">
                        <button type="button" onclick="validateForm()">Add Member</button>
                        <button type="button">Update</button>
                        <button type="button">Delete</button>
                    </div>
                </form>
            </section>
        </div>
    </main>

	<!-- Footer Fragment -->
	<%@ include file="chunksFinanceFooter.jsp" %>

    <!-- JavaScript for Form Validation -->
    <script>
	
        // Function to handle button click
        function handleButtonClick(event) {
            const button = event.target;

            // Add the 'clicked' class to simulate the button being pressed
            button.classList.add('clicked');

            // Remove the 'clicked' class after 10 seconds
            setTimeout(() => {
                button.classList.remove('clicked');
            }, 10000); // 10 seconds delay
        }

        // Add click event listeners to all buttons
        document.querySelectorAll('.button-group button, button').forEach(button => {
            button.addEventListener('click', handleButtonClick);
        });
		
        function validateForm() {
            var name = document.getElementById("name").value;
            var dob = document.getElementById("dob").value;
            var address1 = document.getElementById("address1").value;
            var email = document.getElementById("email").value;
            var area = document.getElementById("area").value;
            var taluk = document.getElementById("taluk").value;
            var district = document.getElementById("district").value;
            var state = document.getElementById("state").value;
            var pin = document.getElementById("pin").value;
            var mobile = document.getElementById("mobile").value;

            if (name == "") {
                alert("Please enter name");
                return false;
            } else if (dob == "") {
                alert("Please select date of birth");
                return false;
            } else if (address1 == "") {
                alert("Please enter address");
                return false;
            } else if (email == "") {
                alert("Please enter email");
                return false;
            } else if (area == "") {
                alert("Please enter area");
                return false;
            } else if (taluk == "") {
                alert("Please enter taluk");
                return false;
            } else if (district == "") {
                alert("Please enter district");
                return false;
            } else if (state == "") {
                alert("Please enter state");
                return false;
            } else if (pin == "") {
                alert("Please enter PIN");
                return false;
            } else if (mobile == "") {
                alert("Please enter mobile");
                return false;
            } else if (!isValidEmail(email)) {
                alert("Please enter a valid email");
                return false;
            }
            return true;
        }

        function isValidEmail(email) {
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return emailRegex.test(email);
        }
		
		
		document.getElementById('logoutTrigger').addEventListener('click', function(e) {
			e.preventDefault();
			const dialog = document.querySelector('.logout-confirm');
			dialog.style.display = 'block';
		});

		document.querySelectorAll('.confirm-btn').forEach(btn => {
			btn.addEventListener('click', function(e) {
				e.preventDefault();
				if(this.classList.contains('yes')) {
					// Replace with actual logout logic
					window.location.href = 'login'; // Removed leading slash
				}
				document.querySelector('.logout-confirm').style.display = 'none';
			});
		});			
    </script>
</body>
</html>