package com.packt.example.rdbmserver.api;

import com.packt.example.rdbmserver.entity.UserPrincipal;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;

@RestController
public class UserController {

//    @RequestMapping("/api/profile")
//    public ResponseEntity<UserProfile> hello() {
//        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//        String email = user.getUsername() + "@mailinator.com";
//        UserProfile profile = new UserProfile();
//        profile.setName(user.getUsername());
//        profile.setEmail(email);
//        System.out.println("In rdbm-service api/profile: " + profile);
//        System.out.println(profile);
//        return ResponseEntity.ok(profile);
//    }


    @GetMapping("/api/user")
    public ResponseEntity<UserProfile> user(Principal principal) {
        OAuth2Authentication token = (OAuth2Authentication) principal;
        UserPrincipal userPrincipal = (UserPrincipal) token.getPrincipal();
        UserProfile userProfile = new UserProfile();
        userProfile.setName(userPrincipal.getUsername());
        userProfile.setEmail(userPrincipal.getUsername() + "@gmail.com");
        return ResponseEntity.ok(userProfile);
    }

}
