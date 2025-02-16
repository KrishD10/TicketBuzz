package com.TicketBuzz.TicketBuzz.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("TicketBuzz")
public class SignupController {

    @GetMapping("/Signup")
    public String signup() {
        return "Signup"; // Return the signup page
    }

    @PostMapping("/Register")
    public String register(@RequestParam("username") String username,
                           @RequestParam("phone") String phone,
                           @RequestParam("password") String password,
                           @RequestParam("confirmPassword") String confirmPassword,
                           Model model) {

        // Validate phone number length
        if (phone.length() != 10 || !phone.matches("\\d{10}")) {
            model.addAttribute("error", "Phone number must be exactly 10 digits and contain only numbers.");
            return "Signup";
        }

        // Validate password match
        if (!password.equals(confirmPassword)) {
            model.addAttribute("error", "Passwords do not match.");
            return "Signup";
        }

        // You can add database logic here to store the user details
        System.out.println("New user registered: " + username + ", Phone: " + phone);

        // Redirect to login page after successful registration
        return "redirect:/TicketBuzz/Login";
    }
}
