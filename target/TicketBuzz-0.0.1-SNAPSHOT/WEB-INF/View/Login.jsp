<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Login.css">
</head>
<body>
    <header id="main-header">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmySONX-655wMhtBXvBpslH_NhX_qlMy14kw&s" alt="logo">
        <div class="auth-buttons">
            <!--<button>Sign in</button>-->
            <button>Sign up</button>
        </div>
    </header>
    
    <main class="container">
        <div class="signin-form">
            <h2>Sign in</h2>
            
            
            
            <form action="/TicketBuzz/auth" method="post">
                <label>Enter your Phone Number:</label>
                <input type="tel" placeholder="Enter your phone number" name="username">
                <label>Create your Password:</label>
                <input type="password" placeholder="Create a password" name="password">
                <!-- <a href="#" class="forgot-password">Forget password?</a> -->
                
                <button type="submit">Sign in</button>
            </form>
        </div>
    </main>
    <footer>
        &copy; 2025 Your Company. All rights reserved.
    </footer>
</body>
</html>