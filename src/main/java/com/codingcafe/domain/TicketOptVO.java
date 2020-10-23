package com.codingcafe.domain;

import lombok.Data;

@Data
public class TicketOptVO {

	private String ticketCode;
	private String ticketType;
	private String ticketName;
	private int ticketPeriod;
	private int price;
	
}
