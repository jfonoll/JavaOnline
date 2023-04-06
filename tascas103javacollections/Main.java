package tascas103javacollections;

import java.util.ArrayList;
import java.util.HashSet;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//Creem Array list de classe Month
		ArrayList<Month> array = new ArrayList();
		
		//Afegim classe Month a cada posicio d'array list excepte el mes d'agost
		Month month1 = new Month();
		month1.setName("Gener");
		array.add(month1);
		
		Month month2 = new Month();
		month2.setName("Febrer");
		array.add(month2);

		Month month3 = new Month();
		month3.setName("Març");
		array.add(month3);

		Month month4 = new Month();
		month4.setName("Abril");
		array.add(month4);

		Month month5 = new Month();
		month5.setName("Maig");
		array.add(month5);

		Month month6 = new Month();
		month6.setName("Juny");
		array.add(month6);

		Month month7 = new Month();
		month7.setName("Juliol");
		array.add(month7);

		Month month9 = new Month();
		month9.setName("Setembre");
		array.add(month9);

		Month month10 = new Month();
		month10.setName("Octubre");
		array.add(month10);

		Month month11 = new Month();
		month11.setName("Novembre");
		array.add(month11);

		Month month12 = new Month();
		month12.setName("Desembre");
		array.add(month12);

		System.out.println("");
		System.out.println("LLista mesos abans d'insertar el mes agost");
		int i=0;
		for (i=0; i< 11 ; i++) {
			System.out.println(array.get(i).getName());	
		}
		
	    //afegim mes d'agost a la posicio 8, la 7 si comptem el 0 en cas de un ArrayList 
		Month month8 = new Month();
		month8.setName("Agost");
		array.add(7,month8);
		
		System.out.println("");
		System.out.println("LLista mesos despres d'insertar el mes agost");
		i=0;
		for (i=0; i< 12 ; i++) {
			System.out.println(array.get(i).getName());	
		}
		
		System.out.println("");
		System.out.println("LLista mesos usant hashset i bucle for, li insertem 1 altre mes d'agost per evidenciar que hashset no admet duplicats");
		
		//Hashset y mostrar recorrent un bucle for
		//Convertim Arraylist a HashSet 
		HashSet<Month> hashSet = new HashSet<>();
	    hashSet.addAll(array);
	    
	    //Ens asegurem de que HashSet no admet duplicats
	    hashSet.add(month8);

        // Mostrem cadascun dels elements de HashSet
        for (Month value : hashSet) {
            System.out.println(value.getName());
        }
		
	}

}
