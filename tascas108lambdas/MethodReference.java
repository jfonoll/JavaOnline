package tascas108lambdas;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@FunctionalInterface 
  interface Interficie {  
	ImprimeixMesos mostra(List<String> output);  
  }  
  class ImprimeixMesos {  
      public ImprimeixMesos(List<String> output) {  
          System.out.print(output);  
      }  
  }  
  public class MethodReference {  
      public static void main(String[] args) { 
      	//Metode reference 
    	  Interficie ref = ImprimeixMesos::new;
    	  
    	  List<String> mesos = Arrays.asList("Gener","Febrer","Març","Abril","Maig","Juny","Juliol","Agost","Setembre","Octubre","Novembre","Desembre");
    	  
    	  List<String> mes= mesos.stream()               
                  .collect(Collectors.toList());
          //Cridem al metode mostra , per veure per pantalla tots els mesos
    	  
    	  ref.mostra(mes);
      }  
  }
  


