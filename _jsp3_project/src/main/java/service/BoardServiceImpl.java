package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.BoardVO;
import repository.BoardDAO;
import repository.BoardDAOImpl;

public class BoardServiceImpl implements BoardService {
	private BoardDAO bdao;	// repository에 interface 생성
	private static final Logger log = LoggerFactory.getLogger(BoardServiceImpl.class);
	
	public BoardServiceImpl() {
		bdao = new BoardDAOImpl();	// repository에 클래스 생성
	}
	@Override
	public int boardregister(BoardVO bvo) {
		// service -> dao에게 db처리 부탁 -> db와 연결
		log.info("boardinsert >> {SERVICE}");
		return bdao.boardinsert(bvo);
	}
	@Override
	public List<BoardVO> getBoardList() {
		log.info("boardlist >> {SERVICE}");
		return bdao.selectBoardList();
	}
	@Override
	public BoardVO getBoardDetail(int bno) {
		log.info("boarddetail >> {SERVICE}");
		return bdao.selectOne(bno);
	}
	@Override
	public int boardupdate(BoardVO bvo) {
		log.info("boardupdate >> {SERVICE}");
		return bdao.boardupdate(bvo);
	}
	@Override
	public int boardremove(int bno) {
		log.info("boardremove >> {SERVICE}");
		return bdao.boardremove(bno);
	}

}
