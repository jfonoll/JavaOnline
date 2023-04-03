package n1exercici1;

public class InstrumentPercusio extends Instrument{

	public InstrumentPercusio (String nom, int preu) {
		super(nom, preu);
	}
	
	@Override
	public void tocar() {
		// TODO Auto-generated method stub
		System.out.println("Estas tocant un " + nom + ", que és un instrument de Percussió i el seu preu és de " + preu);
	}
}
