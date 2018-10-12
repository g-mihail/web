package com.vebinar;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.freemarker.FreeMarkerAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
@SpringBootApplication
@ComponentScan
@EnableAutoConfiguration(exclude = { FreeMarkerAutoConfiguration.class })
@EnableJpaRepositories(basePackages = {"com.vebinar.dao"})


    public class Application {

        public static void main(String[] args) {
            SpringApplication.run(Application.class, args);
        }

    }

//