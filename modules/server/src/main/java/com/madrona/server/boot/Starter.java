/*
 * (C) Copyright 2009-2010 Madrona Solutions (Pvt) Limited.
 * All Rights Reserved.
 *
 * These materials are unpublished, proprietary, confidential source code of
 * Madrona Solutions (Pvt) Limited and constitute a TRADE SECRET
 * of Madrona Solutions (Pvt) Limited.
 *
 * Madrona Solutions (Pvt) Limited retains all title to and intellectual
 * property rights in these materials.
 */

package com.madrona.server.boot;


import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Starter {

    public static void main(String[] args) {
        System.out.println("Madrona server started .....");
        ApplicationContext context = new ClassPathXmlApplicationContext("madrona-rest-server-context.xml");

    }
}
