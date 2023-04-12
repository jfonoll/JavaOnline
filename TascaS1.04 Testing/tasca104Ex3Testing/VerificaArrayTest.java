package tasca104Ex3Testing;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

class VerificaArrayTest {

	//LLença excepcio ArrayIndexOutOfBoundsException
	@Test
	public void throwsArrayIndexException() {
		
		Exception e = Assertions.assertThrows(ArrayIndexOutOfBoundsException.class,//Parent Class Exception
                () -> {
                	
                 
				  VerificaArray.main(5);
					
            	  
            	  });
			
			String msg = e.getMessage();
			assertEquals("Excepcio ArrayIndexOutOfBoundsException: ", msg);
		}
	
}
