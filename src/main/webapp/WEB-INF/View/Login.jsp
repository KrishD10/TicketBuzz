<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign In - TicketBuzz</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Login.css">

</head>
<body>
	<header>
		<img
			src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmySONX-655wMhtBXvBpslH_NhX_qlMy14kw&s"
			alt="TicketBuzz Logo">
		<div class="auth-buttons">
			<button onclick="window.location.href='/TicketBuzz/Signup'">SignUp</button>
		</div>
	</header>

	<main>
		<div class="signin-form">
			<h2>Sign In</h2>

			<form action="/TicketBuzz/auth" method="post">
				<div>
					<label for="phone">Enter your Phone Number:</label> <input
						type="tel" id="phone" name="username"
						placeholder="Enter your phone number" required>
				</div>
				<div>
					<label for="password">Create your Password:</label> <input
						type="password" id="password" name="password"
						placeholder="Create a password" required>
				</div>

				<button type="submit">Sign In</button>
			</form>
		</div>
	</main>

	<footer>
		<p>&copy; 2025 TicketBuzz. All rights reserved.</p>
	</footer>
</body>
</html>
