package tasca106ex1generics;

public class NoGenericMethods {

	private Object objecte1 = new Object();
	private Object objecte2 = new Object();
	private Object objecte3 = new Object();
	
	//Metodes Get per extreure informació d'atributos d'ojectes
	//Metodes Set per modificar o inicialitzar atributs 
	public Object getObjecte1() {
		return objecte1;
	}


	public void setObjecte1(Object objecte1) {
		this.objecte1 = objecte1;
	}


	public Object getObjecte2() {
		return objecte2;
	}


	public void setObjecte2(Object objecte2) {
		this.objecte2 = objecte2;
	}


	public Object getObjecte3() {
		return objecte3;
	}


	public void setObjecte3(Object objecte3) {
		this.objecte3 = objecte3;
	} 

     //Contructor de 33 objectes de la classe Ojecte 
	public NoGenericMethods(Object parametre1, Object parametre2, Object parametre3) {
		super();
		System.out.println("1 Crida soc l'objecte " +((Objecte)parametre1).getAtribut1() + " - " + ((Objecte)parametre1).getAtribut2());
		System.out.println("2 Crida soc l'objecte " +((Objecte)parametre2).getAtribut1() + " - " + ((Objecte)parametre2).getAtribut2());
		System.out.println("3 Crida soc l'objecte " +((Objecte)parametre3).getAtribut1() + " - " + ((Objecte)parametre3).getAtribut2());
		
		//Inicialitzem amb metodes Set i atributs els podem definir com a privats 
		//deixant els metodes Set publics
		this.setObjecte1(objecte1);
		this.setObjecte2(objecte2);
		this.setObjecte3(objecte3);
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		final Objecte localobjecte1 = new Objecte(1,"Ojecte 1");
		final Objecte localobjecte2 = new Objecte(2,"Ojecte 2");
		final Objecte localobjecte3 = new Objecte(3,"Ojecte 3");
		
		System.out.println("Ordre Objecte 1, 2 i 3");
		
		NoGenericMethods noGenericMethods = new NoGenericMethods(localobjecte1,localobjecte2,localobjecte3);

		System.out.println("Ordre Objecte 2, 1 i 3");
		noGenericMethods = new NoGenericMethods(localobjecte2,localobjecte1,localobjecte3);
		
	}

}
