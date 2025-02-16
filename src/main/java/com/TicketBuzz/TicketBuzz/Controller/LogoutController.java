package com.TicketBuzz.TicketBuzz.Controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/TicketBuzz")
public class LogoutController {

    @GetMapping("/Logout")
    public String logout(HttpSession session) {
        // Invalidate the session to log out the user
        session.invalidate();
        
        // Redirect to the login page
        return "redirect:/TicketBuzz/Login";
    }
}
