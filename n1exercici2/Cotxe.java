package n1exercici2;

public class Cotxe {

	public final static String marca = "BMW";
	public static String model;
	final String potencia = "350 CV";
	
	public static String getModel() {
		return model;
	}

	public static void setModel(String model) {
		Cotxe.model = model;
	}
	
	public static String getMarca() {
		return marca;
	}

	public String getPotencia() {
		return potencia;
	}
	
	//Constructor de cotxe 
	public Cotxe (String model) {
		setModel(model);
	}
	
	public static void frenar () {
		System.out.println("El vehicle " + marca + "model " + model + ", esta frenant");
	}
	
	public void accelerar() {
		System.out.println("El vehicle " + marca + "model " + model + ", esta accelerant");
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Marca i potencia s'han d'inicialitzar al ser static
		
		//La classe estatica frenar es pot cridar sense crear constructor
		frenar();
		
		//per invocar el metode accelerar es necessari instanciar la classe cotxe   
		Cotxe cotxe = new Cotxe("fd");
		cotxe.accelerar();

		//Variable final potencia s'ha d'instanciar
		System.out.println("Potencia cotxe:" + cotxe.potencia);
	}

}

