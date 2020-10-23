package com.codingcafe.service;

import java.util.List;

import com.codingcafe.domain.TicketOptVO;



public interface TicketService {

	List<TicketOptVO> getOptList(String type);
}
