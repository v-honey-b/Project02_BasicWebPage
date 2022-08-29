package service;

import java.util.List;

import domain.BoardVO;

public interface BoardService {

	int boardregister(BoardVO bvo);

	List<BoardVO> getBoardList();

	BoardVO getBoardDetail(int bno);

	int boardupdate(BoardVO bvo);

	int boardremove(int bno);

}
