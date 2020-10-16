package com.codingcafe.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class TicketController {
	
	private static final Logger logger = LoggerFactory.getLogger(TicketController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/ticket", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "ticket";
	}


	
	
}
