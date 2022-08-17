package egovframework.let.crud2.service;

import java.util.List;
import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface Crud2Service {
	//데이터 목록 가져오기
	public List<EgovMap> selectCrudList(Crud2VO vo) throws Exception;

	//데이터 가져오기
	public Crud2VO selectCrud(Crud2VO vo) throws Exception;
	
	//데이터 등록하기
	public String insertCrud(Crud2VO vo) throws Exception;
	
	//데이터 수정하기
	public void updateCrud(Crud2VO vo) throws Exception;
	
	//데이터 삭제하기
	public void deleteCrud(Crud2VO vo) throws Exception;
	
	//데이터 목록 수
	public int selectCrudListCnt(Crud2VO vo) throws Exception;
}
