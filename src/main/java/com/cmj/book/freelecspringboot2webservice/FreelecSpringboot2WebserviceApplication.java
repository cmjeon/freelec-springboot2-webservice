package com.cmj.book.freelecspringboot2webservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

//@EnableJpaAuditing JpaConfig 에서 설정
@SpringBootApplication
public class FreelecSpringboot2WebserviceApplication {

    public static void main(String[] args) {
        SpringApplication.run(FreelecSpringboot2WebserviceApplication.class, args);
    }

}
