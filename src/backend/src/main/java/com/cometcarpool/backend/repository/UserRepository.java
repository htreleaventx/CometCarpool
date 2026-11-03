package com.cometcarpool.backend.repository;
import com.cometcarpool.backend.model.User; // imports the User class so this repository knows what type of data it will work with
import org.springframework.data.jpa.repository.JpaRepository; // gives us built in database functions like save(), findById(), and findAll()

// repository used to save, find, update, and delete users in the database
public interface UserRepository extends JpaRepository<User, Long> {

    boolean existsByEmail(String email); // checks if user with the same email already exists

    User findByEmail(String email); // finds a user by their email

}
