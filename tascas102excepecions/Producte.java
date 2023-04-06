package tascas102excepecions;

public class Producte {
	String nom;
	Double preu;
	
	public String getNom() {
		return nom;
	}
	
	public Producte(String nom, Double preu) {
		super();
		this.nom = nom;
		this.preu = preu;
	}
	
	public void setNom(String nom) {
		this.nom = nom;
	}
	public Double getPreu() {
		return preu;
	}
	public void setPreu(Double preu) {
		this.preu = preu;
	}

}
