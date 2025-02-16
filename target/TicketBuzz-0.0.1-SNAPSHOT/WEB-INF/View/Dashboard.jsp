<%@ page import="java.util.List" %>
<%@ page import="com.TicketBuzz.TicketBuzz.Entity.Movies" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Homepage</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Dashboard.css">
</head>

<body>
    <header id="main-header">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmySONX-655wMhtBXvBpslH_NhX_qlMy14kw&s" alt="Logo">
        
        <div class="search-box">
            <input type="text" placeholder="Search movies">
            <input type="text" placeholder="Search theatres">
        </div>
        
        <button>Profile</button>
    </header>

    <main id="main-body">
        <section id="main-container">
            <h1>Movies</h1>
            
            <div class="card-container">
                <!-- Loop through the movieList -->
                <%
                    // Retrieve the movieList from the request attribute
                    List<Movies> movieList = (List<Movies>) request.getAttribute("movieList");
                    
                    // Check if movieList is not null
                    if (movieList != null) {
                        for (Movies movie : movieList) {
                %>
                    <div class="box">
                        <!-- Display the movie image -->
                        <img src="<%= movie.getMovieUrl() %>" alt="<%= movie.getMovieName() %> Poster">
                        <h4><%= movie.getMovieName() %></h4>
                        <h4>Rating: <%= movie.getMovieRating() %></h4>
                    </div>
                <%
                        } // End of the loop
                    } else {
                %>
                    <p>No movies available.</p>
                <%
                    } // End of if
                %>
            </div>
        </section>
    </main>
</body>
</html>
