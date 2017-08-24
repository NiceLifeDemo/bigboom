package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication(  scanBasePackages = {
		"com.example.demo.controller",
		"com.example.demo.service"
})
public class BigboomApplication {

	public static void main(String[] args) {
		SpringApplication.run(BigboomApplication.class, args);
	}

}
