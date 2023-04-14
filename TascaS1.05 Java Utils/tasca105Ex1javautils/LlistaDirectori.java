package tasca105Ex1javautils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import java.util.stream.Collectors;

public class LlistaDirectori {

	String directori;
	static FileWriter escriure = null;
	
	public LlistaDirectori() {
		super();
	}

	public String getDirectori() {
		return directori;
	}

	public void setDirectori(String directori) {
		this.directori = directori;
	}

	   //Metode que mostra contingut de directoris i subdirectoris 
	 static void ImpresioRecursiva(File[] arrayFitxersDirectoris, int nivell)
     {
         // for-each loop for main directory files
         for (File fitxer : arrayFitxersDirectoris) 
         {
        	 
             // Tabulacio per nivell intern
             for (int i = 0; i < nivell; i++)
                 System.out.print("\t");
  
             	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
	             //Preguntem si es fitxer o directori
	             if (fitxer.isFile())
	                 System.out.println(fitxer.getName() + " F " + " Data ultima modificacio: " + sdf.format(fitxer.lastModified()).toString());
	  
	             else if (fitxer.isDirectory()) {
	                 System.out.println("[" + fitxer.getName() + "] + D " + " Data ultima modificacio: " + sdf.format(fitxer.lastModified()).toString());
	  
	                 // Per cada subdirectori tornem a cridar la funcio recursivament i afegim nivell dintre del directori
	                 ImpresioRecursiva(fitxer.listFiles(), nivell + 1);
	             }
         }
     }
     
	 //Metode que crea el fitxer Directori.txt on es guarda tot el contingut de un directori 
	 static void creemFitxer() throws IOException{
		 
			//Creem fitxer per guardar directoris i fitxers rebuts
			File fitxer = new File ("Directori.txt");
			//Permetra escriure en el fitxer
			escriure = new FileWriter(fitxer, true);
			
			//Comprovem si fitxer existeix
			if (!fitxer.exists()) {
				fitxer.createNewFile();
			}
			
			 
	 }
	 
	 //Metode que guarda contingut de fichers i directoris dintre de un directori, en Directori.txt
	 static void ImpresioRecursivaAFitxer(File[] arrayFitxersDirectoris, int nivell) throws IOException
     {
         
		 // for-each loop for main directory files
         for (File fitxer : arrayFitxersDirectoris) 
         {
        	 
             // Tabulacio per nivell intern
             for (int i = 0; i < nivell; i++)
 				//Escrivim en el fitxer
 			    escriure.write("\t"); 
 			   
             	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
	             //Preguntem si es fitxer o directori
	             if (fitxer.isFile()) {
	  			    escriure.write(fitxer.getName() + " F " + " Data ultima modificacio: " + sdf.format(fitxer.lastModified()).toString() + "\r\n"); 
	 			    
	             }	  
	             else if (fitxer.isDirectory()) {
	            	 escriure.write("[" + fitxer.getName() + "] + D " + " Data ultima modificacio: " + sdf.format(fitxer.lastModified()).toString()+ "\r\n");
	            	
	                 // Per cada subdirectori tornem a cridar la funcio recursivament i afegim nivell dintre del directori
	            	 ImpresioRecursivaAFitxer(fitxer.listFiles(), nivell + 1);
	             }
         }
     }
     
	//Metode que mostra contingut de un directori alfabeticament, conte els exemples 1,2 i 3
	public void llistaDirectoriAlfabeticament() throws IOException {
		
		
		  File directory = new File(getDirectori());
	      File[] fileList = directory.listFiles();
	      
	      //Ordena el llistat de fitxers/directoris
	      Arrays.sort(fileList);
	      
	      //Exercici 1
	      System.out.println("Exemple 1");
	      //Llisto directori alfabeticament
	      for(File file: fileList) {
		         System.out.println(file.getName());
		   }
		    
	      //Exercici 2
	      System.out.println("Exemple 2");
	      ImpresioRecursiva(fileList, 0);
	      
	      //Exercici 3
	      System.out.println("Exemple 3");
	      creemFitxer();
	      ImpresioRecursivaAFitxer(fileList, 0);
	      escriure.close();
	      
	}
	
	//Metode que llegeix contingut de fitxer txt donat
	public void llegirFitxerTxt() throws IOException {
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("Introduir fitxer .TXT: \r\n");
		String fitxerTXT = scanner.nextLine();

		File fitxer = new File (fitxerTXT);
		
		if (fitxer.exists()) {
			String cadena; 
			FileReader filereader = new FileReader(fitxerTXT); 
        
			BufferedReader buffer = new BufferedReader(filereader); 
			while((cadena = buffer.readLine())!=null) { 
				System.out.println(cadena); 
			}
			buffer.close();
		}
         
		else {
			System.out.println("Fitxer " + fitxerTXT + " no existeix");
		}
		
		scanner.close();
		
	}
	
}
