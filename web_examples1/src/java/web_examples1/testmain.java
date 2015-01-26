package web_examples1;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class testmain {
	private static final Logger logger = LoggerFactory
			.getLogger(testmain.class);
	
	public static void main(String[] args) {
		logger.trace("trace");
		logger.warn("warn");
		logger.debug("debug");
		logger.error("error");
		
	}
}
