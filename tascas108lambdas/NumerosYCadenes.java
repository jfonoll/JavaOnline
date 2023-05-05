package tascas108lambdas;

public class NumerosYCadenes implements Comparable{
	int nombre;
	String cadena;
	
	public int getNombre() {
		return nombre;
	}

	public void setNombre(int nombre) {
		this.nombre = nombre;
	}

	public String getCadena() {
		return cadena;
	}

	public void setCadena(String cadena) {
		this.cadena = cadena;
	}

	public int getLongitudCadena() {
		return cadena.length();
	}


	
	public NumerosYCadenes(int nombre, String cadena) {
		super();
		this.nombre = nombre;
		this.cadena = cadena;
	}

	  @Override
	  public String toString() {
	    return "NumerosYcadenes [Nombre=" + nombre + ", cadena=" + cadena + "]";
	  }
	  
	  @Override
	  public int compareTo(Object o) {
		NumerosYCadenes unAltra = (NumerosYCadenes) o;
	    
	    return this.getCadena().compareTo(unAltra.getCadena());
	  }
	
}
