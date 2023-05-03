package tascas107ex1anotations;

public class TreballadorOnline extends Treballador{

	private static final int tarifaInternet = 50;
	
	public static int getTarifainternet() {
		return tarifaInternet;
	}

	public TreballadorOnline(String nom, String cognom, int preuhora) {
		super(nom, cognom, preuhora);
		// TODO Auto-generated constructor stub
	}

	@Override
    public int calcularsou(int hores) {
        return (this.getPreuhora() * hores ) + tarifaInternet;
    }
	
}
