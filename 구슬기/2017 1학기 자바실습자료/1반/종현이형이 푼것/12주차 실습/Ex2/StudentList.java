import java.util.Scanner;
public class StudentList implements IList{
	
		String[] strStudentNumbers;
		String[] strPhoneNumbers;
		String[] arr = new String[3];
		String strTitle;
		String strDate;
		String[] strNames;
		int iCount;
		
		Scanner sc = new Scanner(System.in);

		public StudentList(String mTitle, String mDate,int mCount) {
			
			strTitle = mTitle;
			iCount = mCount;
			strDate = mDate;
			strNames = new String[mCount];
			strStudentNumbers = new String[mCount];
			strPhoneNumbers = new String[mCount];

		}

		public void splitAndSave(int iIndex, String mInput)	{
			
				strNames[iIndex]=arr[0];
				strStudentNumbers[iIndex] = arr[1];
				strPhoneNumbers[iIndex] = arr[2];
			
	
		}
			
			public void writeList(){
				// TODO Auto-generated method stub
				
				System.out.println("=== 정보 입력 ===");
				for(int i = 0; i<iCount; i++)
					{
						System.out.println((i+1)+"번째 학생의 정보를  \",\"로 구분하여 입력하세요.(이름,학번,전화번호 )");
						arr = sc.next().split(",");
						for(int j=0; j<arr.length; j++){
							splitAndSave(i, arr[j]);
							}
					}
			}

			
			public void readList(){
			
				System.out.println("=== 입력된 정보 ===");
				System.out.println("이름\t\t학번\t\t전화번호");
				Info();
				for(int i = 0; i<iCount; i++){
					System.out.println(strNames[i]+"\t\t"+strStudentNumbers[i]+"\t"+strPhoneNumbers[i]);
				}
			}

			@Override
			public void Info() {
				// TODO Auto-generated method stub
				
			}
		}
		