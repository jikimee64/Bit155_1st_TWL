import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

/*
 DML(insert , update, delete)
 JDBC API 통해서
 1. 결과 집합이 없다. 반대되는 개념은 select (결과 집합 있음) 
 2. 반영된 결과 row를 return 해준다.  
         java 코드
         ex) update emp set sal=0 >> 14건 변경 된다.  >> return 14 이렇게 준다.      return 값이 0보다 크면 성공한거 이렇게 판단한다.
             update emp set sal=0 where empno=11111 >> return 0   저런 사원이 없어서 반영된게 없으니까 return 은 0, 에러는 아님.  
             
         java 코드 : 성공..... 실패 로직 여러분 마음이다. 
  
  KEY POINT   **정말 중요한 얘기**
  1. Oracle 에서 DML 작업( Tool, cmd )하면 반드시 commit or rollback 강제 했었는데
  2. JDBC API 에서는 자바 코드를 통해서 DML 을 하면    >>  default AutoCommit ....자동 실반영된다.
  3. java code 에서  delete from emp 하면 실행 하고 자동 Commit >>  실반영
  4. 필요에 따라서 commit() , rollback()   들을  java 코드에서 제어가능 하게 만듦       
  
      
      시작
      A 계좌 이출 (update)
      
      ..
      
      B 계좌 입금 (update)
      
     
      끝 
  >>하나의 논리적인 단위(transaction)
  >>autocommit 옵션을 >> false로 바꿈     
  >>그럼 java code 에서 명시적으로 commit, rollback 할수 있다.
  
  
 */
public class Ex02_Oracle_DML {

	public static void main(String[] args) {
		/*//연결 -명령- 명령실행 -처리 -받기-연결해제 이거만 외우면 됨.*/
		
		Connection conn = null;
		Statement stmt = null;
		
		
		try {                                                          //insert, update, delete 다 해봄.. 해보고 주석처리해놓음. dmlemp 에는 다 반영됨. 
			//Class.forName("oracle.jdbc.OracleDriver");
			 conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bit","1004");
			 stmt = conn.createStatement();

			 
			//INSERT
			 /*
			 int empno =0;
			 String ename ="";
			 int deptno =0;
			 
			 Scanner sc = new Scanner(System.in);
			 System.out.println("사번입력: ");
			 empno = Integer.parseInt(sc.nextLine());
			 
			 System.out.println("이름입력: ");
			 ename = sc.nextLine();
			 
			 System.out.println("부서번호입력: ");
			 deptno = Integer.parseInt(sc.nextLine());
			 
			 //insert into dmlemp(empno,ename,deptno) values(100,'홍길동',10);
			 
			 //무식한 코드
			 String sql = "insert into dmlemp(empno,ename,deptno)";  
			 sql+= "values(" + empno + ",'"+ ename + "',"+ deptno + ")";  //ename컬럼은  String 이라서 '앞뒤로 추가.
			 
			 //실제) parameter 사용
			 //values(?,?,?);   이렇게 바뀐다. 
			 
			 //executeUpdate()  하나로 insert, update, delete 다 한다.
			 int resultrowcount = stmt.executeUpdate(sql);
			 //resultrowcount 는 stmt.executeUpdate(sql) 이 성공했을 때에만 값을 반환(할당) 받는다. 
			 
			 if(resultrowcount > 0) {
				 System.out.println("반영된 행의 수 : "+ resultrowcount);
			 }else {
				 //0 또는 작은경우에 else를 오는데..(실패했다는 뜻)
				 //여기에 else 해봤자 의미가 없다. 성공했을때에만 resultrowcount에 반환값이 들어오기 때문에
				 System.out.println("실패 : "+ resultrowcount);
			 }
			 
			 //insert 가 실패한다면? 언제지?? 
			 //1.PK 위반
			 //2.컬럼의 길이
			 //3.타입설정
			 // 얘네는 resultrowcount 값을 반환(할당) 받기 전에 발생 .
			 */
			 
			 
			 
			 //UPDATE
			 //update dmlemp set sal=0 where deptno = ?
			 /*
			 int deptno =0;
			 Scanner sc = new Scanner(System.in);
			 System.out.println("부서번호입력: ");
			 deptno = Integer.parseInt(sc.nextLine());
			 
			 String sql = "update dmlemp set sal=0 where deptno=" + deptno;  //문자면 ''추가해야함        
			               //deptno (입력받기) 인 사람들의 sal 을 0으로 한다.
			 
			 
			 ***결과***
			  부서번호입력: 
             10        // 10번 부서의 사람들 sal 을 0으로 한다.
                          반영된 행의 수 : 4    //10번 부서가 4명이라서 4개 반영됨. 

			  
			 
			 int resultrowcount = stmt.executeUpdate(sql); 
			 
			 if(resultrowcount > 0) {
				 System.out.println("반영된 행의 수 : "+ resultrowcount);
			 }else {
				 System.out.println("실패 : "+ resultrowcount);
			 }
			 */
			 
			 //DELETE
			 //delete from dmlemp where deptno 
			 int deptno =0;
			 Scanner sc = new Scanner(System.in);
			 System.out.println("부서번호입력: ");
			 deptno = Integer.parseInt(sc.nextLine());
			 
			 String sql = "delete dmlemp where deptno=" + deptno;  
			 
			 /* 결과
			 부서번호입력: 
		     20
			반영된 행의 수 : 5
			 */


			  
			 
			 int resultrowcount = stmt.executeUpdate(sql); 
			 
			 if(resultrowcount > 0) {
				 System.out.println("반영된 행의 수 : "+ resultrowcount);
			 }else {
				 System.out.println("실패 : "+ resultrowcount);
			 }
			 
			 
			 
		}catch(Exception e){
			
			System.out.println("예외발생"+ e.getMessage());  //오류나면 여기로 오니까 . 위에 if문에서 else 를 탈 일이없다!!!!
		
		}finally {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		

		
	}

}
