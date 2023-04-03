package n2exercici1;

public class Telefon {
	String marca;
	String model;
	
	//Constructor telefon sense parametres
	public Telefon() {
	}
	
	//Constructor telefon marca i model
	public Telefon(String marca, String model) {
		super();
		this.marca = marca;
		this.model = model;
	}

	//Metode trucar que mostra per consola el telefon que esta trucant
	public void trucar(String numTelefon)
	{
		System.out.println("s'està trucant al num de telefon " + numTelefon);
	}
	
}
