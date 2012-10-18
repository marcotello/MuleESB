package com.marco.tello.service;

public class SimpleCXFService implements ISimpleCXFService {

	@Override
	public String sayHello(String name) {
		return "Hello" + name + ", this a simple CXF service.";
	}

}
