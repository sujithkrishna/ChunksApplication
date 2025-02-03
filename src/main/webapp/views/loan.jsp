<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Loan Details</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">	  
  <link rel="stylesheet" href="css/mainstyle.css">
  <link rel="stylesheet" href="css/loan.css">  
  <style>

  </style>
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
            <li><a href="dashboard">Dashboard</a></li>
            <li><a href="approvals">Approvals</a></li>
            <li><a href="financeCollecionUploads">Finance Collection Upload</a></li>
            <li><a href="financeCollecionStatus">Finance Collection Status</a></li>
            <li><a href="loan" class="active">Loans</a></li>
            <li><a href="earnings">Earnings</a></li>
            <li><a href="expenses">Expenses</a></li>
            <li><a href="member" >Members</a></li>
            <li><a href="newChits">Chits</a></li>
            <li><a href="createFinance">Create Finance</a></li>
    </ul>
  </nav>

  <!-- Main Content Section -->
  <main>
    <div class="content-wrapper">
      <!-- Wrap the heading and form inside a section -->
      <section>
        <h2>Loan Details</h2>

        <!-- Loan Details Form -->
        <form>
          <!-- Split into two columns -->
          <div class="form-container">
            <div class="form-left">
              <!-- Finance Source -->
              <div class="form-group">
                <label for="ownerOfFund">Finance Source</label>
                <select id="ownerOfFund" class="input-field">
                  <option value="" disabled selected>Select source</option>
                  <option value="johnDoe">Chunks Finance</option>
                  <option value="janeDoe">Onam Fund</option>
                </select>
              </div>

              <!-- Loan No -->
              <div class="form-group">
                <label for="loan-no">Loan No</label>
                <input type="text" id="loan-no" name="loan-no" class="input-field" placeholder="LoanNo" required>
              </div>

              <!-- Loan Applicant Name -->
              <div class="form-group">
                <label for="applicant-name">Loan Applicant Name</label>
                <input type="text" id="applicant-name" name="applicant-name" class="input-field" placeholder="Enter applicant name" required>
              </div>

              <!-- Loan Amount -->
              <div class="form-group">
                <label for="loan-amount">Loan Amount</label>
                <input type="number" id="loan-amount" name="loan-amount" class="input-field" placeholder="Enter loan amount" required>
              </div>

              <!-- Loan Date -->
              <div class="form-group">
                <label for="loan-date">Loan Date</label>
                <input type="date" id="loan-date" name="loan-date" class="input-field" required>
              </div>
            </div>

            <div class="form-right">
              <!-- Loan Reference Name -->
              <div class="form-group">
                <label for="financeName">Loan Reference Name</label>
                <select id="ownerOfFund" class="input-field">
                  <option value="" disabled selected>Loan Reference Name</option>
                  <option value="johnDoe">Sujith Krishna</option>
                  <option value="janeDoe">Fr Jaison</option>
                  <option value="alexSmith">Manesh</option>
                  <option value="maryJohnson">Jijin</option>
                </select>
              </div>

              <!-- Loan Disbursement Amount -->
              <div class="form-group">
                <label for="disbursement-amount">Loan Disbursement Amount</label>
                <input type="number" id="disbursement-amount" name="disbursement-amount" class="input-field" placeholder="Enter disbursement amount" required>
              </div>

              <!-- Interest Amount -->
              <div class="form-group">
                <label for="interest-amount">Interest Amount</label>
                <input type="number" id="interest-amount" name="interest-amount" class="input-field" placeholder="Enter interest amount" required>
              </div>

              <!-- Received and Yet to Receive Amount -->
              <div class="form-group">
                <label for="received-amount">Received Amount</label>
                <input type="number" id="received-amount" name="received-amount" class="input-field" placeholder="Enter received amount">
              </div>

              <div class="form-group">
                <label for="pending-amount">Yet to Receive Amount</label>
                <input type="number" id="pending-amount" name="pending-amount" class="input-field" placeholder="Enter yet to receive amount">
              </div>
            </div>
          </div>

          <!-- EMI Section -->
          <div class="emi-section">
            <h3>EMI Details</h3>
            <div class="form-container">
              <div class="form-left">
                <!-- EMI 1 to EMI 9 -->
                <div class="form-group">
                  <label for="emi-1">EMI 1</label>
                  <input type="number" id="emi-1" name="emi-1" class="input-field" placeholder="Enter EMI 1 amount">
                </div>
                <div class="form-group">
                  <label for="emi-2">EMI 2</label>
                  <input type="number" id="emi-2" name="emi-2" class="input-field" placeholder="Enter EMI 2 amount">
                </div>
                <div class="form-group">
                  <label for="emi-3">EMI 3</label>
                  <input type="number" id="emi-3" name="emi-3" class="input-field" placeholder="Enter EMI 3 amount">
                </div>
                <div class="form-group">
                  <label for="emi-4">EMI 4</label>
                  <input type="number" id="emi-4" name="emi-4" class="input-field" placeholder="Enter EMI 4 amount">
                </div>
                <div class="form-group">
                  <label for="emi-5">EMI 5</label>
                  <input type="number" id="emi-5" name="emi-5" class="input-field" placeholder="Enter EMI 5 amount">
                </div>
                <div class="form-group">
                  <label for="emi-6">EMI 6</label>
                  <input type="number" id="emi-6" name="emi-6" class="input-field" placeholder="Enter EMI 6 amount">
                </div>
                <div class="form-group">
                  <label for="emi-7">EMI 7</label>
                  <input type="number" id="emi-7" name="emi-7" class="input-field" placeholder="Enter EMI 7 amount">
                </div>
                <div class="form-group">
                  <label for="emi-8">EMI 8</label>
                  <input type="number" id="emi-8" name="emi-8" class="input-field" placeholder="Enter EMI 8 amount">
                </div>
                <div class="form-group">
                  <label for="emi-9">EMI 9</label>
                  <input type="number" id="emi-9" name="emi-9" class="input-field" placeholder="Enter EMI 9 amount">
                </div>
              </div>

              <div class="form-right">
                <!-- EMI 10 to EMI 17 -->
                <div class="form-group">
                  <label for="emi-10">EMI 10</label>
                  <input type="number" id="emi-10" name="emi-10" class="input-field" placeholder="Enter EMI 10 amount">
                </div>
                <div class="form-group">
                  <label for="emi-11">EMI 11</label>
                  <input type="number" id="emi-11" name="emi-11" class="input-field" placeholder="Enter EMI 11 amount">
                </div>
                <div class="form-group">
                  <label for="emi-12">EMI 12</label>
                  <input type="number" id="emi-12" name="emi-12" class="input-field" placeholder="Enter EMI 12 amount">
                </div>
                <div class="form-group">
                  <label for="emi-13">EMI 13</label>
                  <input type="number" id="emi-13" name="emi-13" class="input-field" placeholder="Enter EMI 13 amount">
                </div>
                <div class="form-group">
                  <label for="emi-14">EMI 14</label>
                  <input type="number" id="emi-14" name="emi-14" class="input-field" placeholder="Enter EMI 14 amount">
                </div>
                <div class="form-group">
                  <label for="emi-15">EMI 15</label>
                  <input type="number" id="emi-15" name="emi-15" class="input-field" placeholder="Enter EMI 15 amount">
                </div>
                <div class="form-group">
                  <label for="emi-16">EMI 16</label>
                  <input type="number" id="emi-16" name="emi-16" class="input-field" placeholder="Enter EMI 16 amount">
                </div>
                <div class="form-group">
                  <label for="emi-17">EMI 17</label>
                  <input type="number" id="emi-17" name="emi-17" class="input-field" placeholder="Enter EMI 17 amount">
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