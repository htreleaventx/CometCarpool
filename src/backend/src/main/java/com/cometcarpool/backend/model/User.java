package com.cometcarpool.backend.model; // includes this class in the backend model package
import jakarta.persistence.*; // imports the tools that let java connect this class to a database table
import com.fasterxml.jackson.annotation.JsonIgnore; // imports JsonIgnore so we can hide fields from JSON responses

@Entity // tells Spring that this class should become a table in the database
@Table(name = "users") // tells Spring that the database table should be labeled as 'users'
// creates User class which represents one user in the CometCarpool system
public class User {


    @Id // marks Id as the primary key for our users table
    @GeneratedValue(strategy = GenerationType.IDENTITY) // this makes the database automatically create the ID number

    private Long id; // stores the users unique ID number
    private String email; // stores the users email

    @JsonIgnore // hides the password when user information is returned as JSON
    private String password; // stores the users password
    
    private String firstName; // stores the users first name
    private String lastName; // stores the users last name
    private String role; // stores what type of user they are

    // empty constructor & Spring/JPA needs this to create User objects
    public User() {
    }

    // gets the users ID and returns it
    public Long getId() {
        return id;
    }

    // sets/changes the users ID
    public void setId(Long id) {
        this.id = id;
    }

    // gets the users email and returns it
    public String getEmail() {
        return email;
    }

    // sets/changes the users email
    public void setEmail(String email) {
        this.email = email;
    }

    // gets the users password and returns it
    public String getPassword() {
        return password;
    }

    // sets/changes the users email
    public void setPassword(String password) {
        this.password = password;
    }

    // gets the users first name and returns it
    public String getFirstName() {
        return firstName;
    }

    // sets/changes the users first name
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    // gets the users last name and returns it
    public String getLastName() {
        return lastName;
    }

    // sets/changes the users last name
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    // gets the users role and returns it
    public String getRole() {
        return role;
    }

    // sets/changes the users role
    public void setRole(String role) {
        this.role = role;
    }

}
