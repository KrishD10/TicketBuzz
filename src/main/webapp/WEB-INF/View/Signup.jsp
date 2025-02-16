<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Signup.css">
</head>
<body>
    <header id="main-header">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmySONX-655wMhtBXvBpslH_NhX_qlMy14kw&s" alt="logo">
        <div class="auth-buttons">
            <button onclick="window.location.href='/TicketBuzz/Login'">Sign in</button>
            <button>Sign up</button>
        </div>
    </header>
    
    <main class="container">
        <div class="signup-form">
            <h2>Sign up</h2>

            <!-- ✅ Form Fixed: Added 'action' & 'method' -->
            <form action="/TicketBuzz/Register" method="POST">
                <label>Enter your Name:</label>
                <input type="text" name="username" placeholder="Enter your name" required>
                
                <label>Enter your Phone Number:</label>
                <input type="tel" name="phone" placeholder="Enter your phone number" required>
                
                <label>Create your Password:</label>
                <input type="password" name="password" placeholder="Create a password" required>
                
                <label>Confirm your Password:</label>
                <input type="password" name="confirmPassword" placeholder="Confirm password" required>

                <button type="submit">Sign up</button>
            </form>

            <!-- ✅ Display Error Messages -->
            <p style="color: red;">${error}</p>
        </div>
    </main>

    <footer>
        &copy; 2025 Your Company. All rights reserved.
    </footer>
</body>
</html>
