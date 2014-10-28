package com.madrona.server.boot;


import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Starter {

    public static void main(String[] args) {
        System.out.println("Printing.....");

        ApplicationContext context = new ClassPathXmlApplicationContext("madrona.xml");

    }
}
