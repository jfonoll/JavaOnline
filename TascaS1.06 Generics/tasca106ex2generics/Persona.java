package tasca106ex2generics;

public class Persona {
	public String nom;
	public String cognom;
	public int edat;
	
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getCognom() {
		return cognom;
	}

	public void setCognom(String cognom) {
		this.cognom = cognom;
	}

	public int getEdat() {
		return edat;
	}

	public void setEdat(int edat) {
		this.edat = edat;
	}

	public Persona(String nom, String cognom, int edat) {
		super();
		this.nom = nom;
		this.cognom = cognom;
		this.edat = edat;
	}
	

	
	
}
