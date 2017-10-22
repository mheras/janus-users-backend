package com.janus.users;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UsersController {

    @RequestMapping("/")
    public String sayHi() {
        return "Hi asshole!";
    }
}
