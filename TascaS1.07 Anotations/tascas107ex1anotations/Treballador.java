package tascas107ex1anotations;

public abstract class Treballador {
	
	public String nom;
	public String cognom;
	public int preuhora;
	
	public Treballador(String nom, String cognom, int preuhora) {
		super();
		this.nom = nom;
		this.cognom = cognom;
		this.preuhora = preuhora;
	}

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

	public int getPreuhora() {
		return preuhora;
	}

	public void setPreuhora(int preuhora) {
		this.preuhora = preuhora;
	}
	
	public abstract int calcularsou(int hores);
	
}
