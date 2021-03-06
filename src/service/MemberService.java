package service;

import dao.MemberDAO;
import vo.MemberVO;

public class MemberService {
	private static MemberService instance = new MemberService();
	public static MemberService getInstance(){
		return instance;
	}

	private MemberService(){}
	private MemberDAO dao = MemberDAO.getInstance();

	public boolean join(MemberVO member){
		MemberVO savedMember = dao.select(member.getId());
		if(savedMember != null){
			return false;
		} else{
			int result = dao.insert(member);
			if(result ==1){
				return true;
			} else {
				return false;
			}
		}
	}
	
	public MemberVO showMember(String id) {
		MemberVO member = dao.select(id);
		return member;
	}

	public boolean login(String id, String password){
		MemberVO savedMember = dao.select(id);
		if(savedMember != null && savedMember.getPassword().equals(password)){
			return true;
		} else {
			return false;
		}
	}

	public boolean leave(String id, String password){
		MemberVO savedMember = dao.select(id);
		if(savedMember != null && savedMember.getPassword().equals(password)){
			dao.delete(savedMember);
			return true;
		} else {
			return false;
		}
	}

}
