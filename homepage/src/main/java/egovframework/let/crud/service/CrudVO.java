package egovframework.let.crud.service;

import java.io.Serializable;
import java.util.Date;

import egovframework.com.cmm.ComDefaultVO;

public class CrudVO extends ComDefaultVO implements Serializable {
	//임시데이터ID
	private String crudId;
	
	//임시데이터 제목
	private String crudSj;
	
	//임시데이터 작성자
	private String userNm;
	
	//임시데이터 내용
	private String crudCn;
	
	//임시데이터 작성 날짜
	private Date frstRegistPnttm;
	

	public String getCrudId() {
		return crudId;
	}

	public void setCrudId(String crudId) {
		this.crudId = crudId;
	}

	public String getCrudSj() {
		return crudSj;
	}

	public void setCrudSj(String crudSj) {
		this.crudSj = crudSj;
	}

	public String getUserNm() {
		return userNm;
	}

	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}

	public String getCrudCn() {
		return crudCn;
	}

	public void setCrudCn(String crudCn) {
		this.crudCn = crudCn;
	}

	public Date getFrstRegistPnttm() {
		return frstRegistPnttm;
	}

	public void setFrstRegistPnttm(Date frstRegistPnttm) {
		this.frstRegistPnttm = frstRegistPnttm;
	}
	
}
