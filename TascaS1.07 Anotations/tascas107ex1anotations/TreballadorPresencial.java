package tascas107ex1anotations;

public class TreballadorPresencial extends Treballador{

	private static int gasolina ;
	
	public TreballadorPresencial(String nom, String cognom, int preuhora) {
		super(nom, cognom, preuhora);
		// TODO Auto-generated constructor stub
	}

	@Override
    public int calcularsou(int hores) {
        return (this.getPreuhora() * hores ) + getGasolina();
    }

	public static int getGasolina() {
		return gasolina;
	}

	public static void setGasolina(int gasolina) {
		TreballadorPresencial.gasolina = gasolina;
	}

}
