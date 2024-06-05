package com.thinkconstructive;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller1 {
	
	
	@GetMapping("get1")
	public String getData() {
		
		return "Hello Rest Api1";
	}

}
