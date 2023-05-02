package tasca106ex2generics;

public class GenericMethods {

	
	public static <X,Y,Z> void genericsMethod ( X data1, Y data2, Z data3){
		
		
		
		  System.out.println("Generics Method:");
		  System.out.println("Data Prameter 1: " + data1);
		  System.out.println("Data Prameter 2: " + data2);
		  System.out.println("Data Prameter 3: " + data3);
		  //System.out.println("Data Passed: " + data3);
		
		  
		  
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Persona persona = new Persona("Jan" , "Puig" , 23);
		
		 GenericMethods.<String,Integer,Persona>genericsMethod("Exemple generic 1 String int i Objecte persona" , 1, persona);
		 
		 GenericMethods.<Integer,String,Persona>genericsMethod(2, "Exemple generic 2" , persona);
		 
		 GenericMethods.<Persona,Integer,String>genericsMethod(persona, 3, "Exemple generic 3" );
		 
		 //GenericMethods.<Integer>genericsMethod(1,2,3);
		 //GenericMethods.<Persona>genericsMethod(1,2,3);
		 
	}
	
	
	
}
