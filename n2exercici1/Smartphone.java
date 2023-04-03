package n2exercici1;

public class Smartphone extends Telefon implements Camera, Rellotge{

	@Override
	public void alarma() {
		// TODO Auto-generated method stub
		System.out.println("Està sonant l'alarma");
	}

	@Override
	public void fotografiar() {
		// TODO Auto-generated method stub
		System.out.println("S'està fent una foto");
	}
	
	

}
