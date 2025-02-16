<%@ page import="com.TicketBuzz.TicketBuzz.Entity.Movies" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Details</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/MovieDetails.css">
</head>
<body>

    <header id="main-header">
        <h2>TicketBuzz</h2>
        <nav>
            <a href="/TicketBuzz/Dashboard">Home</a>
            <a href="/TicketBuzz/Profile">Profile</a>
            <a href="/TicketBuzz/Logout">Logout</a>
        </nav>
    </header>

    <main class="movie-details-container">
        <%
            Movies movie = (Movies) request.getAttribute("movie");
            if (movie != null) {
        %>
            <div class="movie-details-card">
                <img src="<%= movie.getMovieUrl() %>" alt="<%= movie.getMovieName() %> Poster">
                <h2><%= movie.getMovieName() %></h2>
                <p><strong>Rating:</strong> <%= movie.getMovieRating() %></p>
                <%-- <p><strong>Description:</strong> <%= movie.getMovieDescription() %></p> --%>
                <button onclick="window.location.href='/TicketBuzz/BookTicket?id=<%= movie.getMovieId() %>'">Book Now</button>
            </div>
        <%
            } else {
        %>
            <p>Movie not found.</p>
        <%
            }
        %>
    </main>

    <footer>
        &copy; 2025 TicketBuzz. All rights reserved.
    </footer>

</body>
</html>
