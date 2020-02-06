package com.xwiggy.food;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class XwiggyApplication {

    public static void main(String[] args) {
        SpringApplication.run(XwiggyApplication.class, args);
    }

}

// package com.xwiggy.food;
//
// import org.springframework.boot.SpringApplication;
// import org.springframework.boot.autoconfigure.SpringBootApplication;
//
// @SpringBootApplication
// public class XwiggyApplication extends SpringBootServletInitializer {
//
//     // @Override
//     // protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
//     //     return builder.sources(XwiggyApplication.class);
//     // }
//
//     public static void main(String[] args) {
//         SpringApplication.run(XwiggyApplication.class, args);
//     }
//
// }
