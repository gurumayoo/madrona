package org.madrona.core;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class LoggerTest {

    private static final Logger logger = LogManager.getLogger(LoggerTest.class);

    public static void main(String[] args) {
        logger.info("Hello How are you?");
        System.out.println("Hello.......");;
    }
}
