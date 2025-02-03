<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Earnings</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">		
    <link rel="stylesheet" href="css/mainstyle.css">
    <link rel="stylesheet" href="css/earnings.css">	
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
            <section>
                <h2>Earnings Management</h2>
                <form>
                    <div class="form-group">
                        <label for="earningsNo">Earnings No:</label>
                        <input type="text" id="earningsNo" class="input-field" placeholder="Enter earnings number" required>
                    </div>

                    <div class="form-group">
                        <label for="finance-type">Finance Type</label>
                        <select id="ownerOfFund" class="input-field">
                            <option value="" disabled selected>Finance Type</option>
                            <option value="johnDoe">Chunks Finance</option>
                            <option value="janeDoe">Onam Fund</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="earningsName">Earnings Name:</label>
                        <input type="text" id="earningsName" class="input-field" placeholder="Enter earnings name" required>
                    </div>

                    <div class="form-group">
                        <label for="earningsDetails">Earnings Details:</label>
                        <input type="text" id="earningsDetails" class="input-field" placeholder="Enter earnings details" required>
                    </div>

                    <div class="form-group">
                        <label for="earningsDate">Date:</label>
                        <input type="date" id="earningsDate" class="input-field" required>
                    </div>

                    <div class="form-group">
                        <label for="earningsAmount">Amount:</label>
                        <input type="number" id="earningsAmount" class="input-field" placeholder="Enter amount" required>
                    </div>

                    <!-- Submit Button -->
                    <div class="button-group">
                        <button type="submit">Submit</button>
                    </div>
                </form>
            </section>
        </div>
    </main>

	<!-- Footer Fragment -->
	<%@ include file="chunksFinanceFooter.jsp" %>

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
	
        // Select all navigation links
        const navLinks = document.querySelectorAll('nav ul li a');

        // Add click event listener to each link
        navLinks.forEach(link => {
            link.addEventListener('click', function() {
                // Remove the 'active' class from all links
                navLinks.forEach(link => link.classList.remove('active'));
                // Add 'active' class to the clicked link
                this.classList.add('active');
            });
        });
		
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