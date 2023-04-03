package n1exercici1;

//Classe abstracta instrument que conte el métode tocar()
public abstract class Instrument {
	
	public String nom;
	public int preu;
	
	//Constructor on s'assigna valor als atributs mitjançant metodes set
	public Instrument(String nom, int preu) {
		
		setNom(nom);
		setPreu(preu);
		
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public double getPreu() {
		return preu;
	}

	public void setPreu(int preu) {
		this.preu = preu;
	}

	
	public abstract void tocar();

}