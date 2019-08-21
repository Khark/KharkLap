package com.studio7707.service;

import java.util.List;

import com.studio7707.DTO.ReplyVO;

public interface ReplyService {
	
	public void writeReply(ReplyVO vo) throws Exception;

	public List<ReplyVO> listAll(int bno) throws Exception;

	public void deleteReply(int rno) throws Exception;
}
