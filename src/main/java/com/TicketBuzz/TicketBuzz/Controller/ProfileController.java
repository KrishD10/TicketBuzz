package com.TicketBuzz.TicketBuzz.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/TicketBuzz")
public class ProfileController {

    @GetMapping("/Profile")
    public String profile(Model model) {
        // Sample user data (Replace this with database integration)
        model.addAttribute("username", "John Doe");
        model.addAttribute("email", "johndoe@example.com");
        model.addAttribute("phone", "9876543210");

        return "Profile"; // This will return profile.html
    }
}
