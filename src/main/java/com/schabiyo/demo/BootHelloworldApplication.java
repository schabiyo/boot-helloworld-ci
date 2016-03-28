package com.schabiyo.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class BootHelloworldApplication {

	
	@RequestMapping("/")
	public String sayHello(){
		return "Hello from Spring Boot";
	}

	public static void main(String[] args) {
		SpringApplication.run(BootHelloworldApplication.class, args);
	}
}
