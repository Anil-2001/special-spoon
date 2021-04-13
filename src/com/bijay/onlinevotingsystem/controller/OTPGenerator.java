package com.bijay.onlinevotingsystem.controller;

import java.util.Random;

public class OTPGenerator {
	
	private final int min = 100000;
	private final int max = 999999;
//	this.otp = 5432;
	
	int generateOTP() {
		Random r = new Random();
		int otp = r.nextInt(this.max - this.min) + this.min;
		return otp;
	}

}
