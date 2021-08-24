package com.example.microservices.cloud.gateway.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("/fallback")
public class FallBackMethodController 
{
	@GetMapping("/userservice")
	public Map<String,Object> fallbackUserService()
	{
		Map<String,Object> map = new HashMap<>();
		map.put("error_code", 500l);
		map.put("error_msg", "User service is taking longer than expected, Please try again later");
		return map;
	}
	
	@GetMapping("/departmentservice")
	public Map<String,Object> fallbackDepartmentService()
	{
		Map<String,Object> map = new HashMap<>();
		map.put("error_code", 500l);
		map.put("error_msg", "User service is taking longer than expected, Please try again later");
		return map;
	}
	
}
