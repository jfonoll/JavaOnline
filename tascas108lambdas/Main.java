package tascas108lambdas;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

public class Main {
	
    public static void main(String[] args) {
    	
    	
    	
    	//Exercici 1 de un conjunt de strings ens retorna una llista d'aquells 
    	// que continguin una lletra, en aquest cas son noms 
    	// la lletra es la O
    	System.out.println("Exercici 1 - Contenen lletra");
        List<String> noms = Arrays.asList("Maria", "Montse", "Paula", "Roser", "Gina");
        List<String> contenenO= noms.stream()               
                 .filter(color -> color.contains("o"))     
                 .collect(Collectors.toList());
         
        contenenO.forEach(System.out::println);
        
        //Lletra o i mes de 5 lletres per cada String
        System.out.println("");
        System.out.println("");
        System.out.println("Exercici 2 - Contenen lletra o i tenen mes de 5 lletres");
        List<String> contenenOiMesde5lletres= noms.stream()               
                .filter(color -> color.contains("o"))     
                .filter(color -> color.length() > 5)
                .collect(Collectors.toList());
        
        contenenOiMesde5lletres.forEach(System.out::println);
       
        
        //Imprtesio dels mesos utilitzant stream de lambda/conjunt de funcions de que sutilitzen de forma anidada
        System.out.println("");
        System.out.println("");
        System.out.println("Exercici 3 - Mesos de l'any impresio ");
        List<String> mesos = Arrays.asList("Gener","Febrer","Març","Abril","Maig","Juny","Juliol","Agost","Setembre","Octubre","Novembre","Desembre");
        List<String> mes= mesos.stream()               
                 .collect(Collectors.toList());
         
        mes.forEach(System.out::println);
        
        System.out.println("");
        System.out.println("");
        System.out.println("Exercici 4 - Method reference");
        MethodReference.main(null);
        

        System.out.println("");
        System.out.println("");
        System.out.println("Exercici 5 - Functional interface");
        
        FunctionaliInterface o = x -> x;
        System.out.println(o.getPiValue(3.1416));

        System.out.println("");
        System.out.println("");
        System.out.println("Exercici 6 - Ordena cadena de mes curta a mes llarga");
        
        
        List<NumerosYCadenes> numerosYCadenes = Arrays.asList(
                new NumerosYCadenes(30, "la mes curta"),
                new NumerosYCadenes(40, "Aquesta sera la cadena mes llarga"),
                new NumerosYCadenes(10, "La segona mes llarga soc jo"),
                new NumerosYCadenes(20, "la del mig estic aqui"),
                new NumerosYCadenes(50, "Soc la segona"));

        numerosYCadenes.stream()
                .sorted(Comparator.comparing(NumerosYCadenes::getLongitudCadena))
                .forEach(System.out::println);

        System.out.println("");
        System.out.println("");
        System.out.println("Exercici 7 - Ordena cadena de mes llarga a mes curta");
        
       numerosYCadenes.stream()
                .sorted(Comparator.comparing(NumerosYCadenes::getLongitudCadena).reversed())
                .forEach(System.out::println);
        
       System.out.println("");
       System.out.println("");
       System.out.println("Exercici 8 - Soc un String invertit");
    
       StringBuilder s = new StringBuilder();
       
       //Creem una expresio lambda per invertir cadena
       Exercici8 exercici8 = x -> 
       {   // lambda expression
           String result = "";
           for(int i = x.length()-1; i >= 0; i--)
              result += x.charAt(i);
           return result;
        };
        
       //Cridem al metode abstracte de functional interface amb la cadena pasada per parametre
       System.out.println(exercici8.reverse("Stringalreves"));
      
     }

    
    
}


