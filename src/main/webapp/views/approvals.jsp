<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Approvals</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">	
    <link rel="stylesheet" href="css/mainstyle.css">
    <link rel="stylesheet" href="css/approvals.css">	
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
            <section id="approvals">
                <h2>Approvals</h2>
                <br>
                <div class="form-container">
                    <div class="form-group">
                        <label for="date">Date:</label>
                        <input type="date" id="date" name="date" required>
                    </div>
                </div>
                <br>
                <table>
                    <thead>
                        <tr>
                            <th align="center">Name</th>
                            <th align="center">Request Type</th>
                            <th align="center">Amount</th>
                            <th align="center">Request Date</th>
                            <th class="status-header">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Sujith Krishna</td>
                            <td>Loan Request</td>
                            <td>₹10,000</td>
                            <td>2023-10-01</td>
                            <td align="right">
                                <div class="button-group-approved">
                                    <button>Approve</button>
                                </div>
                                <div class="button-group-approved">
                                    <button>Reject</button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Manesh</td>
                            <td>Expense Claim</td>
                            <td>₹5,000</td>
                            <td>2023-10-02</td>
                            <td align="right">
                                <div class="button-group-approved">
                                    <button>Approve</button>
                                </div>
                                <div class="button-group-approved">
                                    <button>Reject</button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Sijin</td>
                            <td>Loan Request</td>
                            <td>₹15,000</td>
                            <td>2023-10-03</td>
                            <td align="right">
                                <div class="button-group-approved">
                                    <button>Approve</button>
                                </div>
                                <div class="button-group-approved">
                                    <button>Reject</button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Jijin</td>
                            <td>Expense Claim</td>
                            <td>₹7,000</td>
                            <td>2023-10-04</td>
                            <td align="right">
                                <div class="button-group-approved">
                                    <button>Approve</button>
                                </div>
                                <div class="button-group-approved">
                                    <button>Reject</button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
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