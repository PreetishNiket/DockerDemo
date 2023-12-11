package com.nagarro.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MyController {
	
	@GetMapping("/getDocker")
	public String getData() {
		return "Docker Demo Project Get API END POINT";
	}
}
