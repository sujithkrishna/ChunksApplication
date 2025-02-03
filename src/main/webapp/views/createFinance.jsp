<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Finance</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">		
    <link rel="stylesheet" href="css/mainstyle.css">
    <link rel="stylesheet" href="css/createFinance.css">	
    <script>
	    if (window.history.replaceState) {
	        window.history.replaceState(null, null, window.location.href);
	    }
    
	    function setTodayDate() {
			    const today = new Date();
			    const year = today.getFullYear();
			    const month = String(today.getMonth() + 1).padStart(2, '0'); // Months are zero-based, so add 1
			    const day = String(today.getDate()).padStart(2, '0');
			    const formattedDate = year + "-" + month + "-" + day;
			    document.getElementById('financeCreationDate').value = formattedDate;
			  }
		  // Call the function when the page loads
		  window.onload = setTodayDate;		
		  function showError(message) {
		      const errorDiv = document.getElementById('error-message');
		      errorDiv.textContent = message; // Set the error message dynamically
		      errorDiv.classList.remove('hidden');
		      errorDiv.classList.add('visible');
		  }

		  function hideError() {
		      const errorDiv = document.getElementById('error-message');
		      errorDiv.classList.remove('visible');
		      errorDiv.classList.add('hidden');
		  }		  
	</script>
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
                <h2>Create Finance</h2>
					<div id="error-message" class="error-message <%= request.getAttribute("error") != null ? "visible" : "hidden" %>">
					    <c:out value="${error}" />
					</div>
                <form method="post" action="createFinance" >
                    <div class="form-group">
                        <label for="finance-type">Finance Type</label>
                        <select id="financeType" name="financeType" class="input-field">
                            <option value="" disabled selected>Select Finance Type</option>
                            <option value="Primary">Primary</option>
                            <option value="Secondary">Secondary</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="finance-name">Finance Name</label>
                        <input type="text" id="financeName" name="financeName" class="input-field" placeholder="Enter finance Name" required>
                    </div>

                    <div class="form-group">
                        <label for="financeOwnerNames">Finance Owner Name</label>
                        <select id="financeOwnerName"  name="financeOwnerName" class="input-field">
                            <option value="" disabled selected>Select Person</option>
                            <option value="SujithKrishna">Sujith Krishna</option>
                            <option value="FrJaison">Fr Jaison</option>
                            <option value="Manesh">Manesh</option>
                            <option value="Jijin">Jijin</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="finance-date">Finance Date</label>
                        <input type="date" id="financeCreationDate" name="financeCreationDate" class="input-field" required>
                    </div>

                    <div class="form-group">
                        <label for="finance-amount">Finance Amount</label>
                        <input type="number" id="financeAmount" name="financeAmount" class="input-field" placeholder="Enter finance amount" required>
                    </div>

                    <!-- Submit Button -->
                    <div class="button-group">
                        <button type="submit">Create</button>
                        <button type="submit">Delete</button>
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

            button.classList.add('clicked');

            setTimeout(() => {
                button.classList.remove('clicked');
            }, 10000); // 10 seconds delay
        }

        document.querySelectorAll('.button-group button, button').forEach(button => {
            button.addEventListener('click', handleButtonClick);
        });
		
 	
        const navLinks = document.querySelectorAll('nav ul li a');

        // Add click event listener to each link
        navLinks.forEach(link => {
            link.addEventListener('click', function() {
                navLinks.forEach(link => link.classList.remove('active'));
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
					window.location.href = 'login'; // Removed leading slash
				}
				document.querySelector('.logout-confirm').style.display = 'none';
			});
		});		
    </script>
</body>
</html>