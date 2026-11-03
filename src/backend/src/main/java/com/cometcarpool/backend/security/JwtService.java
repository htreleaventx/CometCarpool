package com.cometcarpool.backend.security;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import org.springframework.stereotype.Service;
import javax.crypto.SecretKey;
import java.nio.charset.StandardCharsets;
import java.util.Date;

@Service // handles creating JWT login tokens
public class JwtService {

    private static final String SECRET_KEY = "CometCarpoolSecretKeyForJWTAuthentication123456"; // secret key used to sign the JWT

    // creates the secret signing key
    private SecretKey getSigningKey() {
        return Keys.hmacShaKeyFor(SECRET_KEY.getBytes(StandardCharsets.UTF_8));
    }

    // creates a JWT token for a user
    public String generateToken(String email) {

        return Jwts.builder()
                .subject(email).issuedAt(new Date())
                .expiration(new Date(System.currentTimeMillis() + 86400000))
                .signWith(getSigningKey()).compact();

    }

}
