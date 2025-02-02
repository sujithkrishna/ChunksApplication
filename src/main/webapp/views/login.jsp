<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Chunks Finance Login</title>
  <link rel="stylesheet" href="css/mainstyle.css">
  <link rel="stylesheet" href="css/login.css">  
</head>
<body>
  <!-- Background Image -->
  <div class="background-image"></div>

  <!-- Header Section -->
  <header>
    <h1>Chunks Finance Dashboard</h1>
    <p>Your financial overview at a glance</p>
  </header>

  <!-- Main Content Section -->
  <main>
    <div class="content-wrapper">
      <!-- Wrap the heading and form inside a section -->
      <section>
        <h2>Login</h2>

        <!-- Login Form -->
        <form method="post" action="login" onsubmit="return validateForm()">
          <!-- Username -->
          <div class="form-group">
            <label for="username">Username</label>
            <input type="text" name="username" class="input-field" placeholder="Enter your username" required>
          </div>

          <!-- Password -->
          <div class="form-group">
            <label for="password">Password</label>
            <input type="password" name="password" class="input-field" placeholder="Enter your password" required>
          </div>

          <!-- Submit and Cancel Button -->
          <div class="button-group">
            <button type="submit">Login</button>
            <button type="button" onclick="backToWebsite()">Cancel</button>
          </div>
        </form>
      </section>
    </div>
  </main>

  <!-- Footer Section -->
  <footer>
    &copy; 2025 Chunks Finance | <a href="#" style="color: white; text-decoration: none;">Privacy Policy</a> | <a href="#" style="color: white; text-decoration: none;">Terms of Service</a>
  </footer>

  <script>
  	var contextPath = "http://www.chunksfinance.com";
  
    function validateForm() {
      var username = document.getElementById("username").value;
      var password = document.getElementById("password").value;

      if (username == "") {
        document.getElementById("username").placeholder = "Please enter username";
        document.getElementById("username").focus();
        return false;
      } else if (password == "") {
        document.getElementById("password").placeholder = "Please enter password";
        document.getElementById("password").focus();
        return false;
      }
    }
    
    function backToWebsite() {
        console.log("Context Path: " + contextPath);
    	window.location.href = contextPath;
    }
    
  </script>
</body>
</html>