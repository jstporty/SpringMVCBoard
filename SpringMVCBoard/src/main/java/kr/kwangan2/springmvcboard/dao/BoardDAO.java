package kr.kwangan2.springmvcboard.dao;

import java.util.List;

import kr.kwangan2.springmvcboard.domain.BoardVO;
import kr.kwangan2.springmvcboard.service.BoardService;

public interface BoardDAO extends BoardService{


	public List<BoardVO> boardVOList();

	public int insertBoardVO(BoardVO boardVO);

	public int insertBoardVOSelectKey(BoardVO boardVO);

	public BoardVO selectBoardVO(Long bno);
	
	public int deleteBoardVO(Long bno);

	public int updateBoardVO(BoardVO boardVO);
}
