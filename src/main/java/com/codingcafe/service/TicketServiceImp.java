package com.codingcafe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingcafe.domain.TicketOptVO;
import com.codingcafe.mapper.TicketMapper;


@Service 
public class TicketServiceImp implements TicketService {
	
	@Autowired
	TicketMapper tm;
	
	@Override
	public List<TicketOptVO> getOptList(String type) {
		
		return tm.getOptList(type);
	}

}
