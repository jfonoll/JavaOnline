package tasca104Ex2Testing;

import static org.junit.jupiter.api.Assertions.*;

import java.lang.annotation.Repeatable;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.junit.jupiter.params.provider.ValueSource;


class CalculaLletraNIFTest {

	@ParameterizedTest
	  @DisplayName("DNI's amb lletra correcta")
	  @ValueSource (ints= {11111111,45342312,38765478,12345678,87654321,998787564,44444444,77777777,66666666,55555555})
	void testCalculaLletra(int dnis) {
		  CalculoDni calculoDni = new CalculoDni();
		    char lletra= calculoDni.calculaLletra(dnis);
		    
		    final String slletres = "TRWAGMYFPDXBNJZSQVHLCKE";
		    assertTrue(slletres.contains(String.valueOf(lletra)));
		    
	}

	
	@ParameterizedTest
	@DisplayName("Comprobacio de quela funcio CalculoDni retorni el mateix que un DNI's amb Lletra esperada")
	
	@CsvSource({
        "11111111, H",
        "45342312, C",
        "38765478, J",
        "12345678, Z",
        "87654321, X",
        "44444444, A",
        "76388367, P",
        "56978567, T",
        "13248755, L",
        "51436539, Y",
	})
	
	void testDNIsambLletraH(int dnis, String pLletra) {
		  CalculoDni calculoDni = new CalculoDni();
		  char lletra= calculoDni.calculaLletra(dnis);
		    
		  final String slletres = "TRWAGMYFPDXBNJZSQVHLCKE";
		  assertEquals(pLletra ,String.valueOf(lletra));
	}

}
