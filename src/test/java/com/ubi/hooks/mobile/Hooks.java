package com.ubi.hooks.mobile;

import com.ubi.testbase.CommonMethods;
import io.cucumber.java.After;
import io.cucumber.java.Before;


public class Hooks {
	
	CommonMethods com = new CommonMethods();
	
    @Before()
    public void beforeInitiateMobile() {
    	System.out.println("Launching mobile APP");
        com.launchAPP();
    }

    @After()
    public void afterInitiate() {
        System.out.println("Closing app");
        com.closeAPP();
    }
}
