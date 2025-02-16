package com.TicketBuzz.TicketBuzz.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("TicketBuzz")
public class LoginController {
    
    @GetMapping("/Login")
    public String Login() {
        return "Login";
    }

    @PostMapping("/auth")
    public String login(@RequestParam("username") String phone, @RequestParam("password") String password, Model model) {
        System.out.println("Phone number: " + phone);
        System.out.println("Password: " + password);
        
        // Validate phone number length
        if (phone.length() != 10) {
            model.addAttribute("error", "Phone number must be exactly 10 digits.");
            return "Login"; // Return to the login page with error message
        }

        // Optionally: Check if the phone number is numeric
        if (!phone.matches("\\d{10}")) {
            model.addAttribute("error", "Phone number must contain only digits.");
            return "Login"; // Return to the login page with error message
        }

        // If phone number is valid, proceed with the login process
        return "redirect:/TicketBuzz/Dashboard";  // Redirect to the dashboard after successful login
    }
}