package tasca104Ex2Testing;

public class CalculoDni {
	String DNI;

	public String getDNI() {
		return DNI;
	}

	public void setDNI(String dNI) {
		DNI = dNI;
	}

	public CalculoDni() {
		super();
	}
	
	public CalculoDni(String dNI) {
		super();
		DNI = dNI;
	}
	
	public char calculaLletra(int pDNI) {
		
      String caracteres="TRWAGMYFPDXBNJZSQVHLCKE";
      int resta = pDNI%23;
      char letra = caracteres.charAt(resta);
       
	  return letra;
	}
		
}
