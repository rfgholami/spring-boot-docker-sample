package com.rfgholami.samples;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class SpringBootDockerSampleApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringBootDockerSampleApplication.class, args);
    }

}

@RequestMapping(value = "/")
@RestController
class HelloController {

    @GetMapping(value = "hello")
    public String sayHello() {
        return "Hello";
    }
    @GetMapping(value = "/")
    public String sayHello1() {
        return "Hello";
    }
}

