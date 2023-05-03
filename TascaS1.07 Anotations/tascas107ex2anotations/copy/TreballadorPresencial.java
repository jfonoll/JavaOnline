package tascas107ex2anotations.copy;

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

	@Deprecated
	public static int getGasolina() {
		return gasolina;
	}

	@Deprecated
	public static void setGasolina(int gasolina) {
		TreballadorPresencial.gasolina = gasolina;
	}

	public static int getCombustible() {
		return gasolina;
	}

	public static void setCombustible(int gasolina) {
		TreballadorPresencial.gasolina = gasolina;
	}

	
}
