package repository;

import java.util.List;

import domain.MemberVO;

public interface MemberDAO {

	int insert(MemberVO mvo);

	MemberVO selectOne(MemberVO mvo);

	int updateLogin(String email);

	List<MemberVO> selectMemberList();

	MemberVO selectOne(String email);

	int memberupdate(MemberVO mvo);

	int memberremove(String email);

}