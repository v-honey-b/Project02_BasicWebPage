package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.MemberVO;
import repository.MemberDAO;
import repository.MemberDAOImpl;

public class MemberServiceImpl implements MemberService {

	private static Logger log = LoggerFactory.getLogger(MemberServiceImpl.class);
	private MemberDAO mdao;
	
	public MemberServiceImpl() {
		mdao = new MemberDAOImpl();
	}
	@Override
	public int memberregister(MemberVO mvo) {
		log.info(">>> register >>> {SERVICE}");
		return mdao.insert(mvo);
	}
	@Override
	public MemberVO login(MemberVO mvo) {
		log.info(">>> login >>> {SERVICE}");
		return mdao.selectOne(mvo);
	}
	@Override
	public int lastLogin(String email) {
		log.info(">>> lastLogin >>> {SERVICE}");
		return mdao.updateLogin(email);
	}
	@Override
	public List<MemberVO> getMemberList() {
		log.info(">>> memberlist >>> {SERVICE}");
		return mdao.selectMemberList();
	}
	@Override
	public MemberVO getMemberDetail(String email) {
		log.info(">>> membermodify >>> {SERVICE}");
		return mdao.selectOne(email);
	}
	@Override
	public int memberupdate(MemberVO mvo) {
		log.info(">>> memberupdate >>> {SERVICE}");
		return mdao.memberupdate(mvo);
	}
	@Override
	public int memberremove(String email) {
		log.info(">>> memberremove >>> {SERVICE}");
		return mdao.memberremove(email);
	}

}
