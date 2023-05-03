package tascas107ex2anotations.copy;

public class TreballadorOnline extends Treballador{

	private static final int tarifaInternet = 50;
	
	@Deprecated
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
	
	public static int getOnlineCosts() {
		return tarifaInternet;
	}

}
