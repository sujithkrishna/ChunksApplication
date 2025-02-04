<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Finance Upload</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">		
    <link rel="stylesheet" href="css/mainstyle.css">
    <link rel="stylesheet" href="css/financeCollecionUploads.css">	

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
                <h2>Finance Upload</h2>
                <form>
                    <!-- Finance Type -->
                    <div class="form-group">
                        <label for="finance-type">Finance Type</label>
                        <select id="finance-type" class="input-field">
                            <option value="" disabled selected>Finance Type</option>
                            <option value="chunksFinance">Chunks Finance</option>
                            <option value="onamFund">Onam Fund</option>
                        </select>
                    </div>

                    <!-- Person's Name -->
                    <div class="form-group">
                        <label for="persons-name">Person's Name</label>
                        <select id="persons-name" class="input-field">
                            <option value="" disabled selected>Select Person</option>
                            <option value="sujithKrishna">Sujith Krishna</option>
                            <option value="frJaison">Fr Jaison</option>
                            <option value="manesh">Manesh</option>
                            <option value="jijin">Jijin</option>
                        </select>
                    </div>

                    <!-- Finance Date -->
                    <div class="form-group">
                        <label for="finance-date">Finance Date</label>
                        <input type="date" id="finance-date" name="finance-date" class="input-field" required>
                    </div>

                    <!-- Reference Number -->
                    <div class="form-group">
                        <label for="reference-number">Reference Number</label>
                        <input type="number" id="reference-number" name="reference-number" class="input-field" placeholder="Reference Number" required>
                    </div>

                    <!-- Finance Amount -->
                    <div class="form-group">
                        <label for="finance-amount">Finance Amount</label>
                        <input type="number" id="finance-amount" name="finance-amount" class="input-field" placeholder="Enter finance amount" required>
                    </div>

                    <!-- Submit Button -->
                    <div class="button-group">
                        <button type="submit">Save</button>
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