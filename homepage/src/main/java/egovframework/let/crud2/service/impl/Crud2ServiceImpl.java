package egovframework.let.crud2.service.impl;

import java.util.List;

import egovframework.let.crud2.service.Crud2Service;
import egovframework.let.crud2.service.Crud2VO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("crud2Service")
public class Crud2ServiceImpl extends EgovAbstractServiceImpl implements Crud2Service {
	
	@Resource(name="crud2Mapper")
	private Crud2Mapper crud2Mapper;
	
	@Resource(name="egovCrudIdGnrService")
	private EgovIdGnrService idgenService;
	
	//MyBatis
	//데이터 목록 가져오기
	@Override
	public List<EgovMap> selectCrudList(Crud2VO vo) throws Exception{
		return crud2Mapper.selectCrudList(vo);
	}
	//데이터 가져오기
	@Override
	public Crud2VO selectCrud(Crud2VO vo) throws Exception {
		return crud2Mapper.selectCrud(vo);
	}
	//데이터 등록하기
	@Override
	public String insertCrud(Crud2VO vo) throws Exception {
		String id = idgenService.getNextStringId();
		vo.setCrudId(id);
		crud2Mapper.insertCrud(vo);
		return id;
	}
	//데이터 수정하기
	@Override
	public void updateCrud(Crud2VO vo) throws Exception {
		crud2Mapper.updateCrud(vo);
	}
	//데이터 삭제하기
	@Override
	public void deleteCrud(Crud2VO vo) throws Exception {
		crud2Mapper.deleteCrud(vo);
	}
	//데이터 목록 수
	@Override
	public int selectCrudListCnt(Crud2VO vo) throws Exception {
		return crud2Mapper.selectCrudListCnt(vo);
	}
	

}
