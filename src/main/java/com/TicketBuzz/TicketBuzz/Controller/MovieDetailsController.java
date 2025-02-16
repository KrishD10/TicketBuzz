package com.TicketBuzz.TicketBuzz.Controller;

import com.TicketBuzz.TicketBuzz.Entity.Movies;
import com.TicketBuzz.TicketBuzz.Entity.MoviesList;
import com.TicketBuzz.TicketBuzz.Service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/TicketBuzz")
public class MovieDetailsController {

    @Autowired
    private MoviesList movieService; // Inject MovieService to get movie details

    @GetMapping("/MovieDetails")
    public String movieDetails(@RequestParam("id") int movieId, Model model) {
        // Fetch movie details based on ID
        Movies movie = movieService.getMovieId(movieId);
        
        if (movie != null) {
            model.addAttribute("movie", movie);
            return "MovieDetails"; // Return the MovieDetails.jsp page
        } else {
            return "redirect:/TicketBuzz/Dashboard"; // Redirect if movie not found
        }
    }
}
