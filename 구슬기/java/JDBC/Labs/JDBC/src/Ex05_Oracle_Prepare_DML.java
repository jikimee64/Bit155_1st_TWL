import java.sql.Connection;
import java.sql.PreparedStatement;

import kr.or.bit.utils.SingletonHelper;

public class Ex05_Oracle_Prepare_DML {   //?여러개인 경우

	public static void main(String[] args) {
		//INSERT
		//inset into dmlemp(empno,ename,deptno) values(?,?,?)
		//UPDATE
		//update dmlemp set ename=? , sal=? , job=? ,deptno=? where empno=?
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		//DML 작업은 결과집합이 만들어 지지 않아서 resultSet 필요없음
		
		try {
			conn = SingletonHelper.getConnection("oracle");
			String sql = "update dmlemp set ename=? , sal=? , job=? ,deptno=? where empno =?";
			
			pstmt = conn.prepareStatement(sql); //(준비된 쿼리문이 필요하다?)
			
			//parameter 설정하기    (? 값 설정)  //개수 잘 맞춰줘야한다.
			pstmt.setString(1, "홍길동");
			pstmt.setInt(2, 5000);
			pstmt.setString(3, "IT");
			pstmt.setInt(4, 20);
			pstmt.setInt(5, 1111);
			
			//실행
			//row는 stmt.executeUpdate(sql) 이 성공했을 때에만 값을 반환(할당) 받는다. 
			int row = pstmt.executeUpdate(); //이미 쿼리문은 DB 서버에 컴파일 되어 존재하고 있따... 
			                                 //파라메터만 보낸다. 
			if(row > 0) {
				System.out.println("update row count : " + row );    //홍길동 9999	홍길동	IT			5000		20  은 제대로 반영됨.
			}else {
				System.out.println("row count : " + row);  // 1111 사번가진 사람 없어서 반영이 안됨. 
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			SingletonHelper.close(pstmt);
		}

	}

}
