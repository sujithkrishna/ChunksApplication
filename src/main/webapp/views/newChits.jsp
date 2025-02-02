<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chits Details</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">		
    <link rel="stylesheet" href="css/mainstyle.css">
    <link rel="stylesheet" href="css/newChits.css">
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
            <li><a href="approvals.html">Approvals</a></li>
            <li><a href="financeCollecionUploads.html">Finance Collection Upload</a></li>
            <li><a href="financeCollecionStatus.html">Finance Collection Status</a></li>
            <li><a href="loan.html">Loans</a></li>
            <li><a href="earnings.html">Earnings</a></li>
            <li><a href="expenses.html">Expenses</a></li>
            <li><a href="member.html" >Members</a></li>
            <li><a href="newChits.html" class="active">Chits</a></li>
            <li><a href="createFinance.html">Create Finance</a></li>
        </ul>
    </nav>

    <!-- Main Content Section -->
    <main>
        <div class="content-wrapper">
            <!-- Wrap the heading and form inside a section -->
            <section>
                <h2>Chits Details</h2>

                <!-- Chits Details Form -->
                <form>
                    <!-- Split into two columns -->
                    <div class="form-container">
                        <div class="form-left">
                            <!-- Chits No -->
                            <div class="form-group">
                                <label for="chits-number">Chits No:</label>
                                <input type="text" id="chits-number" class="input-field" placeholder="Enter Chits number" required>
                            </div>

                            <!-- Chits Name -->
                            <div class="form-group">
                                <label for="chits-name">Chits Name:</label>
                                <input type="text" id="chits-name" class="input-field" placeholder="Enter Chits name" required>
                            </div>

                            <!-- Start Date -->
                            <div class="form-group">
                                <label for="start-date">Start Date:</label>
                                <input type="date" id="start-date" class="input-field" required>
                            </div>

                            <!-- Total Chits -->
                            <div class="form-group">
                                <label for="total-chits">Total Chits:</label>
                                <input type="number" id="total-chits" class="input-field" placeholder="Enter total number of chits" required>
                            </div>

                            <!-- Total Amount -->
                            <div class="form-group">
                                <label for="total-amount">Total Amount:</label>
                                <input type="number" id="total-amount" class="input-field" placeholder="Enter total amount" required>
                            </div>
                        </div>

                        <div class="form-right">
                            <!-- Empty space for alignment -->
                        </div>
                    </div>

                    <!-- Chits 1 to Chits 10 -->
                    <div class="chits-section">
                        <h3>Chits Details</h3>
                        <div class="form-container">
                            <div class="form-left">
                                <!-- Chits 1 to Chits 5 -->
                                <div class="form-group">
                                    <label for="chits-1">Chits 1:</label>
                                    <input type="text" id="chits-1" class="input-field" placeholder="Enter Chits 1 details" required>
                                </div>
                                <div class="form-group">
                                    <label for="chits-2">Chits 2:</label>
                                    <input type="text" id="chits-2" class="input-field" placeholder="Enter Chits 2 details" required>
                                </div>
                                <div class="form-group">
                                    <label for="chits-3">Chits 3:</label>
                                    <input type="text" id="chits-3" class="input-field" placeholder="Enter Chits 3 details" required>
                                </div>
                                <div class="form-group">
                                    <label for="chits-4">Chits 4:</label>
                                    <input type="text" id="chits-4" class="input-field" placeholder="Enter Chits 4 details" required>
                                </div>
                                <div class="form-group">
                                    <label for="chits-5">Chits 5:</label>
                                    <input type="text" id="chits-5" class="input-field" placeholder="Enter Chits 5 details" required>
                                </div>
                            </div>

                            <div class="form-right">
                                <!-- Chits 6 to Chits 10 -->
                                <div class="form-group">
                                    <label for="chits-6">Chits 6:</label>
                                    <input type="text" id="chits-6" class="input-field" placeholder="Enter Chits 6 details" required>
                                </div>
                                <div class="form-group">
                                    <label for="chits-7">Chits 7:</label>
                                    <input type="text" id="chits-7" class="input-field" placeholder="Enter Chits 7 details" required>
                                </div>
                                <div class="form-group">
                                    <label for="chits-8">Chits 8:</label>
                                    <input type="text" id="chits-8" class="input-field" placeholder="Enter Chits 8 details" required>
                                </div>
                                <div class="form-group">
                                    <label for="chits-9">Chits 9:</label>
                                    <input type="text" id="chits-9" class="input-field" placeholder="Enter Chits 9 details" required>
                                </div>
                                <div class="form-group">
                                    <label for="chits-10">Chits 10:</label>
                                    <input type="text" id="chits-10" class="input-field" placeholder="Enter Chits 10 details" required>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Chits 11 to Chits 20 -->
                    <div class="chits-section">
                        <div class="form-container">
                            <div class="form-left">
                                <!-- Chits 11 to Chits 15 -->
                                <div class="form-group">
                                    <label for="chits-11">Chits 11:</label>
                                    <input type="text" id="chits-11" class="input-field" placeholder="Enter Chits 11 details" required>
                                </div>
                                <div class="form-group">
                                    <label for="chits-12">Chits 12:</label>
                                    <input type="text" id="chits-12" class="input-field" placeholder="Enter Chits 12 details" required>
                                </div>
                                <div class="form-group">
                                    <label for="chits-13">Chits 13:</label>
                                    <input type="text" id="chits-13" class="input-field" placeholder="Enter Chits 13 details" required>
                                </div>
                                <div class="form-group">
                                    <label for="chits-14">Chits 14:</label>
                                    <input type="text" id="chits-14" class="input-field" placeholder="Enter Chits 14 details" required>
                                </div>
                                <div class="form-group">
                                    <label for="chits-15">Chits 15:</label>
                                    <input type="text" id="chits-15" class="input-field" placeholder="Enter Chits 15 details" required>
                                </div>
                            </div>

                            <div class="form-right">
                                <!-- Chits 16 to Chits 20 -->
                                <div class="form-group">
                                    <label for="chits-16">Chits 16:</label>
                                    <input type="text" id="chits-16" class="input-field" placeholder="Enter Chits 16 details" required>
                                </div>
                                <div class="form-group">
                                    <label for="chits-17">Chits 17:</label>
                                    <input type="text" id="chits-17" class="input-field" placeholder="Enter Chits 17 details" required>
                                </div>
                                <div class="form-group">
                                    <label for="chits-18">Chits 18:</label>
                                    <input type="text" id="chits-18" class="input-field" placeholder="Enter Chits 18 details" required>
                                </div>
                                <div class="form-group">
                                    <label for="chits-19">Chits 19:</label>
                                    <input type="text" id="chits-19" class="input-field" placeholder="Enter Chits 19 details" required>
                                </div>
                                <div class="form-group">
                                    <label for="chits-20">Chits 20:</label>
                                    <input type="text" id="chits-20" class="input-field" placeholder="Enter Chits 20 details" required>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Buttons -->
                    <div class="button-group">
                        <button type="submit">Submit</button>
                        <button type="reset">Reset</button>
                    </div>
                </form>
            </section>
        </div>
    </main>

    <!-- Footer Section -->
    <footer>
        &copy; 2025 Chunks Finance | <a href="#" style="color: white; text-decoration: none;">Privacy Policy</a> | <a href="#" style="color: white; text-decoration: none;">Terms of Service</a>
    </footer>
	
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