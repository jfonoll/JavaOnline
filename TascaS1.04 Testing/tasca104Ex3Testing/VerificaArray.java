package tasca104Ex3Testing;

public class VerificaArray {
	
	public static void main(int i) {
		// TODO Auto-generated method stub

		verificaArray(i);
	}
	
	
	public static void verificaArray(int i)
	{

		try {
		
			String[] array = new String[i];
			
			array[0] = "element 1";
			array[1] = "element 2";
			array[2] = "element 3";
			array[3] = "element 4";
			array[4] = "element 5";
			
			//provoquem error
			array[9] = "element 9";
			  	
		} catch (ArrayIndexOutOfBoundsException e) {
            System.err.println("S'ha cridat a un element no existent dintre de array[], Excepcio ArrayIndexOutOfBoundsException : " + e.getMessage());
		}
		
		
	}
	

	
	
}
