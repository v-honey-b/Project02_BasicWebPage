package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.MemberVO;
import orm.DatabaseBuilder;

public class MemberDAOImpl implements MemberDAO {
	
	private static Logger log = LoggerFactory.getLogger(MemberDAOImpl.class);
	// DB 연결
	private SqlSession sql;
	private final String NS = "MemberMapper.";
	
	public MemberDAOImpl() {
		new DatabaseBuilder();
		sql = DatabaseBuilder.getFactory().openSession();
	}

	@Override
	public int insert(MemberVO mvo) {
		log.info(">>> register >>> {DAO}");
		int isUp = sql.insert(NS+"reg", mvo);
		if (isUp > 0) {
			sql.commit();
		}
		return isUp;
	}

	@Override
	public MemberVO selectOne(MemberVO mvo) {
		log.info(">>> login >>> {DAO}");
		return sql.selectOne(NS+"login", mvo);
	}

	@Override
	public int updateLogin(String email) {
		log.info(">>> lastLogin >>> {DAO}");
		int isUp = sql.update(NS+"last", email);
		if (isUp > 0) {
			sql.commit();
		}
		return isUp;
	}

	@Override
	public List<MemberVO> selectMemberList() {
		log.info(">>> memberlist >>> {DAO}");
		return sql.selectList(NS+"memberlist");
	}

	@Override
	public MemberVO selectOne(String email) {
		log.info(">>> membermodify >>> {DAO}");
		return sql.selectOne(NS+"memberdetail", email);
	}

	@Override
	public int memberupdate(MemberVO mvo) {
		log.info(">>> memberupdate >>> {DAO}");
		int isUp = sql.update(NS+"memberupdate", mvo);
		if (isUp > 0) {
			sql.commit();
		}
		return isUp;
	}

	@Override
	public int memberremove(String email) {
		log.info(">>> memberremove >>> {DAO}");
		int isUp = sql.delete(NS+"memberremove", email);
		if (isUp > 0) {
			sql.commit();
		}
		return isUp;
	}

}
