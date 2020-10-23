package com.codingcafe.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.codingcafe.domain.TicketOptVO;
import com.codingcafe.service.TicketService;
import com.codingcafe.service.TicketServiceImp;

import lombok.Setter;

/**
 * Handles requests for the application home page.
 */



@Controller
@RequestMapping("ticket/*")
public class TicketController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(TicketController.class);
	
	@Autowired
	TicketService ts;
	
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("티켓고르기");
		return "ticket";
	}


	@GetMapping(value = "/optList")
	public ResponseEntity<List<TicketOptVO>> getOptList(@RequestParam("type") String type,ModelAndView mv) {
		
		
		for(TicketOptVO vo :ts.getOptList(type)) {
			System.out.println(vo);
		}
		
		ResponseEntity<List<TicketOptVO>>re = new ResponseEntity<List<TicketOptVO>>(ts.getOptList(type),HttpStatus.OK);
		return re;
	}
	
	
}
