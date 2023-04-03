package n1exercici1;

public class InstrumentCorda extends Instrument{
	
	public InstrumentCorda (String nom, int preu) {
		super(nom, preu);
	}
	
	@Override
	public void tocar() {
		// TODO Auto-generated method stub
		System.out.println("Estas tocant un " + nom + ", que és un instrument de Corda i el seu preu és de : " + preu);
	}
	
}
