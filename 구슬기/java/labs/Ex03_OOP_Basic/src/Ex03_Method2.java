import kr.or.bit.Computer;
import kr.or.bit.Keyboard;
import kr.or.bit.Mainbody;
import kr.or.bit.Moniter;
import kr.or.bit.Mouse;
import kr.or.bit.NoteBook;
public class Ex03_Method2 {

	public static void main(String[] args) {
		
		NoteBook notebook = new NoteBook();
		Mouse mouse = new Mouse();
		//mouse 주소
		Mouse mouse2 = notebook.handle(mouse); //Mouse 주소 담겨짐
		System.out.println(mouse2.x);
		System.out.println(mouse2.y);
		
		

	
	
	
				
		
		
	


}
}
