package com.cometcarpool.backend.service;
import com.cometcarpool.backend.model.User; // imports the user model
import com.cometcarpool.backend.repository.UserRepository; // imports the repository so we can use database functions
import org.springframework.stereotype.Service; // lets Spring automatically manage this class

import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.List; // imports list so we can store and return multiple users

@Service // tells Spring this class contains service/business logic
// UserService class that handles user related logic
public class UserService {

    private final UserRepository userRepository; // gives this service access to the users database table
    private final PasswordEncoder passwordEncoder; // gives this service access to the password encoder

    // connects UserRepository to this service
    public UserService(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    // saves a user to the database
    public User saveUser(User user) {

        // checks if the users email is a UTD email or no email at all
        if(user.getEmail() == null || !user.getEmail().endsWith("@utdallas.edu")) {
            throw new IllegalArgumentException("User must be a student with a UTD email address.");
        }

        // checks if the email is already registered in the system
        if (userRepository.existsByEmail(user.getEmail())) {
            throw new IllegalArgumentException(
                    "A user with this email already exists."
            );
        }

        // hashes the password before saving it to the database
        user.setPassword(passwordEncoder.encode(user.getPassword()));

        return userRepository.save(user);
    }

    // checks the users email and password when logging in
    public User loginUser(String email, String password) {

        User user = userRepository.findByEmail(email); // finds the new user in the database using their email

        // checks if the user exists
        if(user == null) {
            throw new IllegalArgumentException("Invalid email or password");
        }

        // checks if the password entered matches the hashed password
        if(!passwordEncoder.matches(password, user.getPassword())) {
            throw new IllegalArgumentException("Invalid email or password");
        }

        return user; // returns the user if the email and password are correct

    }

    // gets all users from the database
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

}
