package korea;

//구구단 로직 처리
public class GugudanService {

	public String gugudan(String dan) {
		String result = "";
		for(int i=1;i<=9;i++) {
			result = result + String.format("%s * %d = %d<br />", dan,i,(Integer.parseInt(dan)*i));
		}
		return result;
	}
	
	
}
