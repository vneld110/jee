package com.homepage.web.serviceimpls;

import java.util.HashMap;
import java.util.Map;
import com.homepage.web.beans.MemberBean;
import com.homepage.web.services.MemberService;

public class MemberServiceImpl implements MemberService{

	MemberBean bean = new MemberBean();
	Map<String,Object> map = new HashMap<String,Object>();
	
	public MemberServiceImpl() {
	
	}
	
	@Override
	public void join(String id, String password, String name, int age,
			String addr) {
	
		bean.setAddr(addr);
		bean.setAge(age);
		bean.setId(id);
		bean.setName(name);
		bean.setPassword(password);
	
		map.put("id", bean.getId());
		map.put("password", bean.getPassword());
		map.put("name", bean.getName());
		map.put("age", String.valueOf(bean.getAge()));
		map.put("addr", bean.getAddr());
		
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
}
