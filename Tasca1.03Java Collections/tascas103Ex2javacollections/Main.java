package tascas103Ex2javacollections;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//Creem Llista List de Integers
	    List<Integer> numeros = new ArrayList<Integer>();
	    
	    numeros.add(1);
	    numeros.add(2);
	    numeros.add(3);
	    numeros.add(4);
	    numeros.add(5);
	    
	    //Mostrem els elements de la llista numneros per pantalla 
	    for (int h = 0 ; h <numeros.size(); h++) {
	    	System.out.println("Número : " + numeros.get(h));
	    }
	    
	    //Creem una Lista de numeros2 pero amb la classe ListIterato que ens permetra
	    //utilitzar els metodes de la Listiterator per mostrar i recorrer elements
	    ListIterator<Integer> numeros2 = numeros.listIterator(5);

	    System.out.println("Ordre invers");

	    //Mostrem els elements de la llista numneros2 per pantalla en ordre invers
	    //utilitzant els metodes del Listiterator numeros2
        while (numeros2.hasPrevious()) {
            System.out.println("Número : " + numeros2.previous());
        }
	    
	}

}
