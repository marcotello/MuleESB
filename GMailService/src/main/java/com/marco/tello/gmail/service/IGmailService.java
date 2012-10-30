package com.marco.tello.gmail.service;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService
public interface IGmailService {
	
	@WebMethod(operationName = "sendMail")
	public String sendMail(String text);
}
