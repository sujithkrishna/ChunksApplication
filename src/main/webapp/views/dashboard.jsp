<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Finance Dashboard</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">		
    <link rel="stylesheet" href="css/mainstyle.css">
	<link rel="stylesheet" href="css/dashboard.css">
	<!-- Add this inside the <head> section -->

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
	
	<div id="dynamic-message" class="dynamic-message">
		<p>The New Finance has been created</p>
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
            <li><a href="dashboard" class="active">Dashboard</a></li>
            <li><a href="approvals">Approvals</a></li>
            <li><a href="financeCollecionUploads">Finance Collection Upload</a></li>
            <li><a href="financeCollecionStatus">Finance Collection Status</a></li>
            <li><a href="loan">Loans</a></li>
            <li><a href="earnings">Earnings</a></li>
            <li><a href="expenses">Expenses</a></li>
            <li><a href="member" >Members</a></li>
            <li><a href="newChits">Chits</a></li>
            <li><a href="createFinance">Create Finance</a></li>
        </ul>
    </nav>

    <!-- Main Content Section -->
    <main>
        <div id="content-wrapper" class="content-wrapper">
            <section id="Content">
                <h2>Chunks Finance</h2>
                <p>Welcome to the Chunks Finance Dashboard. Here is your detailed financial overview:</p>
                <!-- Card for Financial Stats -->
                <div class="card">
                    <div>
                        <div class="stat-title">Total Earnings</div>
                        <div class="stat-value">&#8377;50,000</div>
                    </div>
                    <div>
                        <div class="stat-title">Total Expenses</div>
                        <div class="stat-value negative">-&#8377;15,000</div>
                    </div>
                    <div>
                        <div class="stat-title">Pending Loans</div>
                        <div class="stat-value">&#8377;10,000</div>
                    </div>
                    <div>
                        <div class="stat-title">Current Balance</div>
                        <div class="stat-value">&#8377;10,000</div>
                    </div>
                </div>
            </section>

            <section id="Content">
                <h2>Onam Fund</h2>
                <p>Welcome to the Onam Dashboard. Here is your detailed financial overview:</p>
                <!-- Card for Financial Stats -->
                <div class="card">
                    <div>
                        <div class="stat-title">Total Earnings</div>
                        <div class="stat-value">&#8377;50,000</div>
                    </div>
                    <div>
                        <div class="stat-title">Total Expenses</div>
                        <div class="stat-value">&#8377;15,000</div>
                    </div>
                    <div>
                        <div class="stat-title">Pending Loans</div>
                        <div class="stat-value">&#8377;10,000</div>
                    </div>
                    <div>
                        <div class="stat-title">Current Balance</div>
                        <div class="stat-value">&#8377;10,000</div>
                    </div>
                </div>
            </section>
        </div>
    </main>

	<!-- Footer Fragment -->
	<%@ include file="chunksFinanceFooter.jsp" %>

    <!-- Move the script here -->
    <script>
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
		
		
		document.getElementById('content-wrapper').addEventListener('click', function(e) {
			e.preventDefault();
			const dialog = document.getElementById('dynamic-message');
			dialog.style.display = 'block';
		});
		
		document.getElementById('dynamic-message').addEventListener('click', function(e) {
			e.preventDefault();
			const dialog = document.getElementById('dynamic-message');
			dialog.style.display = 'none';
		});
		
    </script>

</body>
</html>