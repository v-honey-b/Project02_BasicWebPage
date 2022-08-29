package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.BoardVO;
import orm.DatabaseBuilder;
import service.BoardServiceImpl;

public class BoardDAOImpl implements BoardDAO {
	private SqlSession sql;
	private static final Logger log = LoggerFactory.getLogger(BoardDAOImpl.class);
	private final String NS = "BoardMapper.";	// namespace.id -> sql 요청할 때 NS뒤에 id만 적어서 호출
	
	public BoardDAOImpl() {
		new DatabaseBuilder();
		sql = DatabaseBuilder.getFactory().openSession();
	}

	@Override
	public int boardinsert(BoardVO bvo) {
		log.info("boardinsert >> {DAO}");
		int isUp = sql.insert(NS+"boardinsert", bvo);
		if (isUp > 0) {
			sql.commit();
		}
		return isUp;
	}

	@Override
	public List<BoardVO> selectBoardList() {
		log.info("boardlist >> {DAO}");
		return sql.selectList(NS+"boardlist");
	}

	@Override
	public BoardVO selectOne(int bno) {
		log.info("boarddetail >> {DAO}");
		return sql.selectOne(NS+"boarddetail", bno);
	}

	@Override
	public int boardupdate(BoardVO bvo) {
		log.info("boardupdate >> {DAO}");
		int isUp = sql.update(NS+"boardupdate", bvo);
		if (isUp > 0) {
			sql.commit();
		}
		return isUp;
	}

	@Override
	public int boardremove(int bno) {
		log.info("boardremove >> {DAO}");
		int isUp = sql.delete(NS+"boardremove", bno);
		if (isUp > 0) {
			sql.commit();
		}
		return isUp;
	}

}
