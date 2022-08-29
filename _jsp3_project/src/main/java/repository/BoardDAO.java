package repository;

import java.util.List;

import domain.BoardVO;

public interface BoardDAO {

	int boardinsert(BoardVO bvo);

	List<BoardVO> selectBoardList();

	BoardVO selectOne(int bno);

	int boardupdate(BoardVO bvo);

	int boardremove(int bno);

}
