package n1exercici1;

public class Exercici1 {

	public static void main(String[] args) {

		//Instanciem Instrument corda i invoquem metode tocar
		InstrumentCorda iCorda = new InstrumentCorda("Violi",714);
		//invoca metode corda
		iCorda.tocar();
				
		InstrumentVent iVent = new InstrumentVent("Trompeta", 520);
		iVent.tocar();
				
		InstrumentPercusio iPercusio = new InstrumentPercusio("Tambor",155);
		iPercusio.tocar();
		
	}

}
