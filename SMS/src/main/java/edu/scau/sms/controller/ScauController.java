package edu.scau.sms.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ScauController {
    @GetMapping("/scau")
    public String scau(){
        return "scau";
    }
}
