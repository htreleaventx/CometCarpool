package com.cometcarpool.backend.controller;
import com.cometcarpool.backend.model.User; // imports the user model
import com.cometcarpool.backend.service.UserService; // imports the UserService so this controller can use user logic
import com.cometcarpool.backend.dto.LoginRequest; // import LoginRequest so this controller can use the email and password for logging in
import com.cometcarpool.backend.dto.LoginResponse; // import LoginResponse so the controller can return the JWT token
import com.cometcarpool.backend.security.JwtService; // import Jwtservice so our controller can create JWT tokens
import org.springframework.web.bind.annotation.*; // imports Spring tools for creating API endpoints
import java.util.List; // imports list so we can store and return multiple users

@RestController // tells Spring this class handles web/API request
@RequestMapping("/api/users") // all endpoints in this class will start with /api/users
// handles API requests for users
public class UserController {

    private final UserService userService; // gives the controller access to UserService
    private final JwtService jwtService; // gives the controller access to JWT token functions

    // connects UserService to this controller
    public UserController(UserService userService, JwtService jwtService) {
        this.userService = userService;
        this.jwtService = jwtService;
    }

    @PostMapping // handles POST requests used to create a new user
    // gets the user data sent in the request
    public User createUser(@RequestBody User user) {
        return userService.saveUser(user);
    }

    @PostMapping("/login") // handles POST requests used to log in a user
    // gets the login information and returns a JWT token
    public LoginResponse loginUser(@RequestBody LoginRequest loginRequest) {

        // checks the email and password
        User user = userService.loginUser(
                loginRequest.getEmail(),
                loginRequest.getPassword()
        );

        // creates a JWT token using the user's email
        String token = jwtService.generateToken(user.getEmail());

        // returns the JWT token
        return new LoginResponse(token);
    }

    @GetMapping // handles GET requests used to get all users
    // gets and returns a list of all users
    public List<User> getAllUsers() {
        return userService.getAllUsers();
    }

}
