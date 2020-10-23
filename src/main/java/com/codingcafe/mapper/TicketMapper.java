package com.codingcafe.mapper;

import java.util.List;

import com.codingcafe.domain.TicketOptVO;

public interface TicketMapper {

	List<TicketOptVO> getOptList(String type);

	
	
}
