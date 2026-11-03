package com.cometcarpool.backend.dto;

// stores the response returned after a successful login
public class LoginResponse {

    private String token; // stores the JWT token returned after a successful login

    // creates a login response with a JWT token
    public LoginResponse(String token) {
        this.token = token;
    }

    // gets the JWT token
    public String getToken() {
        return token;
    }

    // sets the JWT token
    public void setToken(String token) {
        this.token = token;
    }
}
