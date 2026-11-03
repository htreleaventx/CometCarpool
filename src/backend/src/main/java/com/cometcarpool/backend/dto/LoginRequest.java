package com.cometcarpool.backend.dto;

// stores the email and password during login
public class LoginRequest {

    private String email; // stores the users email
    private String password; // stores the users password

    // gets the user email and returns it
    public String getEmail() {
        return email;
    }

    // sets the user email
    public void setEmail(String email) {
        this.email = email;
    }

    // gets the user password and returns it
    public String getPassword() {
        return password;
    }

    // sets the user password
    public void setPassword(String password) {
        this.password = password;
    }

}
