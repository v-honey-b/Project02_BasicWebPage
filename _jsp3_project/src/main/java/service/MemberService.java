package service;

import java.util.List;

import domain.MemberVO;

public interface MemberService {

	int memberregister(MemberVO mvo);

	MemberVO login(MemberVO mvo);

	int lastLogin(String email);

	List<MemberVO> getMemberList();

	MemberVO getMemberDetail(String email);

	int memberupdate(MemberVO mvo);

	int memberremove(String email);

}
