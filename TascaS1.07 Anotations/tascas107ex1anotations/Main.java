package tascas107ex1anotations;

public class Main {

	public static void main(String[] args) {
		
		int horestreballades1 = 20;
		int horestreballades2 = 30;
		int horestreballades3 = 40;
		
		TreballadorOnline treballadorOnline1 = new TreballadorOnline ("Jordi","Fonoll",horestreballades1);
		System.out.println("Online 1: Total de " + horestreballades1 + " hores treballades de : " + treballadorOnline1.getCognom() + " a " + treballadorOnline1.getPreuhora() + "eur/hora , son " + treballadorOnline1.calcularsou(20) + " euros, dels cuals " + TreballadorOnline.getTarifainternet()  +" son de tarifa d'internet");
		
		TreballadorOnline treballadorOnline2 = new TreballadorOnline ("Jose","Pelaez",horestreballades2);
		System.out.println("Online 2: Total de " + horestreballades2 + " hores treballades de : " + treballadorOnline2.getCognom() + " a " + treballadorOnline2.getPreuhora() + "eur/hora , son " + treballadorOnline2.calcularsou(20) + " euros, dels cuals " + TreballadorOnline.getTarifainternet()  +" son de tarifa d'internet");
		
		TreballadorOnline treballadorOnline3 = new TreballadorOnline ("Maria","Sants",horestreballades3);
		System.out.println("Online 3: Total de " + horestreballades3 + " hores treballades de : " +  treballadorOnline3.getCognom() + " a " + treballadorOnline3.getPreuhora() + "eur/hora , son " + treballadorOnline3.calcularsou(20) + " euros, dels cuals " + TreballadorOnline.getTarifainternet()  +" son de tarifa d'internet");
		
		
		//Treballadors presencials, calcular preu hora		
		//Posem 40eur gasolina per tots els treballadors
		TreballadorPresencial.setGasolina(40);
		
		TreballadorPresencial treballadorPresencial1 = new TreballadorPresencial("Joana","Forte",horestreballades1);
		
		System.out.println("Presencial 1: Total de " + horestreballades1 + " hores treballades de : " + treballadorPresencial1.getCognom() + " a " + treballadorPresencial1.getPreuhora() + "eur/hora , son " + treballadorPresencial1.calcularsou(20)+ " euros, dels cuals " + TreballadorPresencial.getGasolina()  +" son de combustible");

		Treballador treballadorPresencial2 = new TreballadorPresencial ("Mopnica","Ramon",horestreballades2);
		System.out.println("Presencial 2: Total de " + horestreballades2 + " hores treballades de : " + treballadorPresencial2.getCognom() + " a " + treballadorPresencial2.getPreuhora() + "eur/hora , son " + treballadorPresencial2.calcularsou(20)+ " euros, dels cuals " + TreballadorPresencial.getGasolina()  +" son de combustible");
		
		Treballador treballadorPresencial3 = new TreballadorPresencial ("Alex","Iglesias",horestreballades3);
		System.out.println("Presencial 3: Total de " + horestreballades3 + " hores treballades de : " +  treballadorPresencial3.getCognom() + " a " + treballadorPresencial3.getPreuhora() + "eur/hora , son " + treballadorPresencial3.calcularsou(20) + " euros, dels cuals " + TreballadorPresencial.getGasolina()  +" son de combustible");

		
	}

}
