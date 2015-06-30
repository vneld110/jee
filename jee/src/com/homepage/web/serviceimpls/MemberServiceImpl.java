package com.homepage.web.serviceimpls;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.homepage.web.beans.MemberBean;
import com.homepage.web.daos.MemberDAO;
import com.homepage.web.services.MemberService;

public class MemberServiceImpl implements MemberService{
	/*
	 * DAO가 싱글톤 패턴으로 단 하나의 인스턴스만 리턴한다면
	 * 그것을 사용하는 서비스도 싱글톤으로 구성해야한다.
	 * 그러지 않으면 다중 접속 상태에서 하나의 인스턴스만 사용하게되어
	 * 접속불량 현상이 발생한다.
	 */
	private static MemberService service = new MemberServiceImpl();
	
	private MemberServiceImpl(){}
	public static MemberServiceImpl getInstance(){
		return (MemberServiceImpl) service;
	}
	MemberBean bean = new MemberBean();
	Map<String,Object> map = new HashMap<String,Object>();
	
	@Override
	public int join(MemberBean bean) {
		return MemberDAO.getInstance().join(bean);
	}
	/*
	 * 회원가입 후 로그인 기능을 하는 메소드이후에
	 * 별다른 말이 없이 없으니까..
	 * 로그인 성공, 실패 메시지까지 여기에서 마감지어야 함.
	 * */
	@Override
	public String login(String id, String password) {
		String msg = "";
		if(map.get("id").equals(id)&& map.get("password").equals(password)){
			return msg = "환영합니다.";
		}else if(!(map.get("id").equals(id))||(map.get("password").equals(password))){
			return msg = "아이디와 비번이 다릅니다. 다시 입력하세요.";
		}else if(!(map.get("password").equals(password))){
			return msg = "비번이 다릅니다.다시 입력하세요.";
		}else {
			return msg = "입력하신 ID 는 존재하지 않거나, 일치하지 않습니다. 다시 입력해 주세요.";
		}
	}
	@Override
	public List<MemberBean> getList() {
		MemberDAO dao = MemberDAO.getInstance();
		return dao.getList();
	}
}