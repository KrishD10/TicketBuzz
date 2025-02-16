<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Profile.css">
</head>
<body>
    <header id="main-header">
        <h2>TicketBuzz</h2>
        <nav>
            <a href="/TicketBuzz/Dashboard">Home</a>
            <a href="/TicketBuzz/profile">Profile</a>
            <a href="/TicketBuzz/Logout">Logout</a>  <!-- ✅ Fixed Logout -->
        </nav>
    </header>

    <main class="profile-container">
        <div class="profile-card">
            <h2>User Profile</h2>
            <img src="https://via.placeholder.com/100" alt="Profile Picture">
            <p><strong>Name:</strong> ${username}</p>
            <p><strong>Email:</strong> ${email}</p>
            <p><strong>Phone:</strong> ${phone}</p>
            <button onclick="window.location.href='/TicketBuzz/EditProfile'">Edit Profile</button>
        </div>
    </main>

    <footer>
        &copy; 2025 TicketBuzz. All rights reserved.
    </footer>
</body>
</html>