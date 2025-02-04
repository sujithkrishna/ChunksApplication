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
		      
		      const sucessDiv = document.getElementById('success-message');
		      sucessDiv.textContent = message; // Set the error message dynamically
		      sucessDiv.classList.remove('hidden');
		      sucessDiv.classList.add('visible');		      
		  }

		  function hideError() {
		      const errorDiv = document.getElementById('error-message');
		      errorDiv.classList.remove('visible');
		      errorDiv.classList.add('hidden');
		      const sucessDiv = document.getElementById('success-message');
		      sucessDiv.classList.remove('visible');
		      sucessDiv.classList.add('hidden');		      
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


	<!-- Edit Overlay -->
	<div id="edit-overlay" class="edit-overlay">
	    <p><h2>Are you want to edit below finance?</h2></p>
	    <div class="form-group">
	        <label for="financeTypeEdit">Finance Type</label>
	        <select id="financeTypeEdit" name="financeType" class="input-field">
	            <option value="" disabled selected>Select Finance Type</option>
	        </select>
	    </div>
	    <div class="form-group">
	        <label for="financeNameEdit">Finance Name</label>
	        <select id="financeNameEdit" name="financeName" class="input-field">
	            <option value="" disabled selected>Select Finance Name</option>
	        </select>
	    </div>
         <div class="form-group">
             <label for="financeOwnerNameEdit">Finance Owner Name</label>
             <select id="financeOwnerNameEdit"  name="financeOwnerName" class="input-field">
                 <option value="" disabled selected>Select Owner</option>
             </select>
         </div>    
	    <div class="confirm-buttons">
			<button onclick="editConfirmBtnEdit()">Edit</button>	    	
	        <button onclick="editConfirmBtnCancel()">Cancel</button>
	    </div>
	</div>
	
	

	<!-- Add this HTML for Edit dialog -->
	<div id="delete-overlay" class="delete-overlay">
		<p><h2>Are you want to Delete below finance?</h2></p>
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
					<div id="error-message" class="error-message ${error != null ? 'visible' : 'hidden'}">
					    <c:out value="${error}" />
					</div>
					<div id="success-message" class="success-message ${success != null ? 'visible' : 'hidden'}">
					    <c:out value="${success}" />
					</div>					
                <form method="post" action="createFinance" id="create">
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
                            <option value="Fr Jaison">Fr Jaison</option>
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
                        <button id="create-button" type="submit">Create</button>
                        <button id="edit-button" onclick="financeEdit()" type="button">Edit</button>
                        <button id="delete-button" onclick="financeDelete()" type="button">Delete</button>
                    </div>
                </form>
            </section>
        </div>
    </main>

	<!-- Footer Fragment -->
	<%@ include file="chunksFinanceFooter.jsp" %>
	 <script>
		 var financeData = {};
		 <c:forEach items="${allFinance}" var="finance">
		     (function() {
		         var type = "${finance.financeType}";
		         var name = "${finance.financeName}";
		         var owner = "${finance.financeOwner}";
		         if (!financeData[type]) {
		             financeData[type] = [];
		         }
		         // Check for duplicates using both name and owner
		         var exists = financeData[type].some(item => item.name === name && item.owner === owner);
		         if (!exists) {
		             financeData[type].push({ name: name, owner: owner });
		         }
		     })();
		 </c:forEach>

		 document.addEventListener('DOMContentLoaded', function() {
		     const typeSelect = document.getElementById('financeTypeEdit');
		     typeSelect.innerHTML = '<option value="" disabled selected>Select Finance Type</option>';
		     Object.keys(financeData).forEach(type => {
		         typeSelect.appendChild(new Option(type, type));
		     });
		     // Trigger initial population of names
		     typeSelect.dispatchEvent(new Event('change'));
		 });
	
		 document.getElementById('financeTypeEdit').addEventListener('change', function() {
			    const selectedType = this.value;
			    const nameSelect = document.getElementById('financeNameEdit');
			    nameSelect.innerHTML = '<option value="" disabled selected>Select Finance Name</option>';
			     
			    if (selectedType && financeData[selectedType]) {
			        const uniqueNames = new Set(); // Track unique names
			        financeData[selectedType].forEach(item => {
			            if (!uniqueNames.has(item.name)) { // Check if name is already added
			                nameSelect.appendChild(new Option(item.name, item.name));
			                uniqueNames.add(item.name); // Add to Set
			            }
			        });
			    }
			    nameSelect.dispatchEvent(new Event('change'));
			});
	
		 document.getElementById('financeNameEdit').addEventListener('change', function() {
			    const selectedType = document.getElementById('financeTypeEdit').value;
			    const selectedName = this.value;
			    const ownerSelect = document.getElementById('financeOwnerNameEdit');
			    ownerSelect.innerHTML = '<option value="" disabled selected>Select Owner</option>';

			    if (selectedType && selectedName) {
			        const uniqueOwners = new Set(); // Track unique owners
			        financeData[selectedType].forEach(item => {
			            if (item.name === selectedName && !uniqueOwners.has(item.owner)) {
			                ownerSelect.appendChild(new Option(item.owner, item.owner));
			                uniqueOwners.add(item.owner); // Add to Set
			            }
			        });
			    }
			});
	 
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
		
		
		
		function financeEdit(){
			const editButton = document.getElementById("edit-button");
		    if (editButton.textContent === "Edit") {
		        editButton.textContent = "Save";
		        document.getElementById('delete-overlay').style.display = 'none';
				document.getElementById('edit-overlay').style.display = 'block';
		    } else {
		        editButton.textContent = "Edit";
		        
		    }
		}

		function financeDelete(){
			document.getElementById('edit-overlay').style.display = 'none';
			document.getElementById('delete-overlay').style.display = 'block';
			
		}	
		
		function editConfirmBtnCancel() {
			document.getElementById('edit-overlay').style.display = 'none';
		}	
		
		function deleteConfirmBtnCancel(){
			document.getElementById('delete-overlay').style.display = 'none';
		}
		
		function editConfirmBtnEdit() {
			//Submit the page here with Edit purpose.
			const financeTypeEditValue=document.getElementById("financeTypeEdit").value;
			const financeNameEditValue=document.getElementById("financeNameEdit").value;
			const financeOwnerNameEditValue=document.getElementById("financeOwnerNameEdit").value;
			 // Set values to main form fields
		    document.getElementById('financeType').value = financeTypeEditValue;
		    document.getElementById('financeName').value = financeNameEditValue;
		    document.getElementById('financeOwnerName').value = financeOwnerNameEditValue;
		    <c:forEach items="${allFinance}" var="financeItem">
		         var amount = "${financeItem.financeAmount}";
		         var financeDate= "${financeItem.financeCreationDate}";
         		if("${financeItem.financeType}"==financeTypeEditValue && "${financeItem.financeName}" == financeNameEditValue && "${financeItem.financeOwner}" == financeOwnerNameEditValue){
         			 document.getElementById('financeAmount').value = amount;
         			document.getElementById('financeCreationDate').value = financeDate;
         			 console.log("Date is "+financeDate);
         		}
		    	
	    	</c:forEach>
		    
		    // Close the edit overlay
		    document.getElementById('edit-overlay').style.display = 'none';
		}
		
    </script>
</body>
</html>