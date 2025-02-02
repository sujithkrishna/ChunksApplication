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
	<header>
		<div style="display: flex; justify-content: space-between; align-items: center; max-width: 1200px; margin: 0 auto;">
			<div style="margin-right: auto; margin-left: -140px;"> <!-- Added margin-left -->
				<h1>Chunks Finance Dashboard</h1>
				<p>Your financial overview at a glance</p>
			</div>
			<!-- Update the user-profile div in the header -->
			<div class="user-profile" style="display: flex; align-items: center; background: rgba(255,255,255,0.1); padding: 0.5rem 1rem; border-radius: 25px; backdrop-filter: blur(5px); position: relative;">
				<div style="margin-right: 1rem;">
					<div class="user-name" style="font-weight: 500; font-size: 0.9rem;">Sujith Krishna</div>
					<div class="user-role" style="font-size: 0.8rem; opacity: 0.9;">Administrator</div>
				</div>
				<div class="user-avatar" style="width: 40px; height: 40px; border-radius: 50%; background: #fff; display: flex; align-items: center; justify-content: center; font-weight: 500; color: #2c3e50; position: relative;">
					<!-- Logout Button -->
					<div class="logout-container">
						<a href="#" class="logout-btn" id="logoutTrigger">
							<i class="fas fa-power-off"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</header>

    <!-- Navigation -->
    <nav>
        <ul>
            <li><a href="dashboard.html">Dashboard</a></li>
            <li><a href="approvals.html" class="active">Approvals</a></li>
            <li><a href="financeCollecionUploads.html">Finance Collection Upload</a></li>
            <li><a href="financeCollecionStatus.html">Finance Collection Status</a></li>
            <li><a href="loan.html">Loans</a></li>
            <li><a href="earnings.html">Earnings</a></li>
            <li><a href="expenses.html">Expenses</a></li>
            <li><a href="member.html" >Members</a></li>
            <li><a href="newChits.html">Chits</a></li>
            <li><a href="createFinance.html">Create Finance</a></li>
        </ul>
    </nav>

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

    <!-- Footer Section -->
    <footer>
        &copy; 2025 Chunks Finance | <a href="#" style="color: white; text-decoration: none;">Privacy Policy</a> | <a href="#" style="color: white; text-decoration: none;">Terms of Service</a>
    </footer>

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
					window.location.href = 'login.html'; // Removed leading slash
				}
				document.querySelector('.logout-confirm').style.display = 'none';
			});
		});			
		
    </script>
</body>
</html>