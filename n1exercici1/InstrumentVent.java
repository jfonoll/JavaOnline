package n1exercici1;

public class InstrumentVent extends Instrument{

	public InstrumentVent (String nom, int preu) {
		super(nom, preu);
	}
	
	@Override
	public void tocar() {
		// TODO Auto-generated method stub
		System.out.println("Estas tocant un " + nom + ", que és un instrument de Vent i el seu preu és de : " + preu);
	}
	
}
