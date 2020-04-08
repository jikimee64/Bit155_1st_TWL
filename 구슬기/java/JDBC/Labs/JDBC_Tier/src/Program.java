import java.util.List;
import java.util.Scanner;

import DAO.DeptDao;
import DTO.Dept;

public class Program {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		/*
		//여기서 화면과 로직을 다 제어한다.
		DeptDao dao = new DeptDao();
		Dept dept = new Dept();
		dept.setDeptno(10);
		dept.setDname("IT");
	    dept.setLoc("seoul");
	     
		int row = dao.insertDept(dept);
		*/
		//1. 전체조회 출력
//		System.out.println("[전체조회]********");
//		List<Dept> deptlist = dao.getDeptAllList();
//		Dept dept = new Dept();
//		
//		if(deptlist != null) {
//			DeptPrint(deptlist);
//		}
	
		
		//2. 부분조회 출력
//		System.out.println("[부분조회]********");
//		
//		Dept part = dao.getDeptListByDeptno(10);
//		if(part != null) {
//			DeptPrint(part);
//		}
		
		//3. 데이터 삽입
//		while(true) {
//		System.out.println("[데이터 삽입]*******");
//		
//		Dept dept2 = new Dept();
//		System.out.println("부서번호 입력");
//		dept2.setDeptno(Integer.parseInt(sc.nextLine()));
//		System.out.println("부서이름 입력");
//		dept2.setDname(sc.nextLine());
//		System.out.println("부서지역 입력");
//		dept2.setLoc(sc.nextLine()); 
//		
//		dao.insertDept(dept2);
//		if(dept2 != null) {
//			DeptPrint(dept2);
//		}
//		break;}
		
		
		////4. 데이터 수정
//		while(true) {
//		System.out.println("[데이터 수정]*******");
//		
//		Dept dept3 = new Dept();
//		System.out.println("수정할 부서번호 입력");
//		dept3.setDeptno(Integer.parseInt(sc.nextLine()));
//		System.out.println("수정할 부서이름 입력");
//		dept3.setDname(sc.nextLine());
//		System.out.println("수정할 부서지역 입력");
//		dept3.setLoc(sc.nextLine()); 
//		
//		dao.updateDept(dept3);
//		if(dept3 != null) {
//			DeptPrint(dept3);
//		}
//		break;}
		
		
		//5. 데이터 삭제.
//		while(true) {
//		System.out.println("[데이터 삭제]*******");
//		Dept dept4 = new Dept();
//		int g;
//		System.out.println("삭제할 데이터 부서번호를 입력하세요.");
//		g = Integer.parseInt(sc.nextLine());
//		dao.deleteDept(g);
//		if(dept4 != null) {
//			DeptPrint(dept4);
//		}
//		break;
//		}
	
	System.out.println("실행할 번호를 입력하세요.");
	System.out.println("전체조회 1 ");
	System.out.println("부분조회 2 ");
	System.out.println("insert 3 ");
	System.out.println("update 4 ");
	System.out.println("delete 5 ");
	int gg = Integer.parseInt(sc.nextLine());
	DeptDao dao = new DeptDao();
		switch (gg) {
		case 1:
			
			System.out.println("[전체조회]********");
			List<Dept> deptlist = dao.getDeptAllList();
			Dept dept = new Dept();
			
			if(deptlist != null) {
				DeptPrint(deptlist);
			}
			
			break;
		case 2:
			System.out.println("[부분조회]********");
			
			Dept part = dao.getDeptListByDeptno(10);
			if(part != null) {
				DeptPrint(part);
			}
			
			break;
		case 3:
			System.out.println("[데이터 삽입]*******");
			
			Dept dept2 = new Dept();
			System.out.println("부서번호 입력");
			dept2.setDeptno(Integer.parseInt(sc.nextLine()));
			System.out.println("부서이름 입력");
			dept2.setDname(sc.nextLine());
			System.out.println("부서지역 입력");
			dept2.setLoc(sc.nextLine()); 
			
			dao.insertDept(dept2);
			if(dept2 != null) {
				DeptPrint(dept2);
			}
			break;
		case 4:
			System.out.println("[데이터 수정]*******");
			
			Dept dept3 = new Dept();
			System.out.println("수정할 부서번호 입력");
			dept3.setDeptno(Integer.parseInt(sc.nextLine()));
			System.out.println("수정할 부서이름 입력");
			dept3.setDname(sc.nextLine());
			System.out.println("수정할 부서지역 입력");
			dept3.setLoc(sc.nextLine()); 
			
			dao.updateDept(dept3);
			if(dept3 != null) {
				DeptPrint(dept3);
			}
			break;
		
		case 5:
			System.out.println("[데이터 삭제]*******");
			Dept dept4 = new Dept();
			int g;
			System.out.println("삭제할 데이터 부서번호를 입력하세요.");
			g = Integer.parseInt(sc.nextLine());
			dao.deleteDept(g);
			if(dept4 != null) {
				DeptPrint(dept4);
			}
			break;

		default:
			System.out.println("잘못 입력하셨습니다.");
			break;
		}
		
		
		
		
		
		
		

	}
	
	public static void DeptPrint(Dept dept) {
		System.out.println(dept.toString());
	}
	
    public static void DeptPrint(List<Dept> list) {
		for(Dept dept : list) {
			System.out.println(dept.toString());
		}
	}

}
