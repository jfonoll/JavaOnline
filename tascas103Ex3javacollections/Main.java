package tascas103Ex3javacollections;
import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	
		      File fitxer = null;
		      FileReader fr = null;
		      BufferedReader br = null;
		      String paraula[]=null;
		      String linea;
		      
		      Map <String, String>paisos=new HashMap<>();
		      
		      try {
		    	  //Creem variable fitxer per obrir fitxer Countries y creacio de BufferReader
		         fitxer = new File ("Countries.txt");
		         fr = new FileReader (fitxer);
		         br = new BufferedReader(fr);

		         //ens llegim fitxer linea a linea i dividirem les paraules per espai entre mig aixi sabrem pais i capital de pais
		         while((linea=br.readLine())!=null) {
		        	
		        	 //System.out.println(linea);
		        	 if(linea!=null){
		        		 paraula=linea.split(" ");
		        		 //assignem al hashmap paisos que es una combinacio de 2 strings amb pais i capital, que es un array 
		        		 paisos.put(paraula[0], paraula[1]);
		        	 }
		        	 
		         }
		         
		         //preguntar nom usuari/aria
		         
		         preguntarUsuaria(paisos);
		         
		         
		      }catch(Exception e){
		         e.printStackTrace();
		      }finally{
		         // Tanquem el fitxer en el finally tant si va be l'execucio com si no va be
		         try{                    
		            if( null != fr ){   
		               fr.close();     
		            }                  
		         }catch (Exception e2){ 
		            e2.printStackTrace();
		         }
		      }
		   }
	
	public static void preguntarUsuaria(Map <String, String>paisos) throws IOException {
		
		int contaEncerts = 0;
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("Introduir nom usuaria\r\n");
		String nom = scanner.nextLine();
		
		
		Object[] coleccioObjectes = paisos.keySet().toArray();
	    
	        
        //System.out.println("************ Random Value ************ \n" + pais + " :: " + paisos.get("Poland"));
       // List<Map.Entry<String, String>> list = new ArrayList<Map.Entry<String, String>>(paisos.entrySet());

	    String capital2 = new String();
		
	    for (int i=0;i<10;i++){
	    	
	    	Object pais = coleccioObjectes[new Random().nextInt(coleccioObjectes.length)];
			System.out.println("Quina es la capital de " + pais);
			String capital = scanner.nextLine();
			
			//
			//System.out.println(paisos.get(pais).trim());
			
			if (capital.equals(paisos.get(pais))) {
				contaEncerts = contaEncerts + 1;
				System.out.println("Enhorabona, la resposta es correcta");
			}else {
				System.out.println("Ho sentim molt, resposta incorrecta, la capital de "+ pais +" es " + paisos.get(pais));
			}
	    }
	    
		System.out.println("Has encertat " + contaEncerts + " respostes \r\n");
	    
		//Creem fitxer per guardar respostes encertades
		File fitxer = new File ("Clasificacio.txt");
		//Permetra escriure en el fitxer
		FileWriter escriure = new FileWriter(fitxer, true);

		//Comprovem si fitxer existeix
		if (!fitxer.exists()) {
			fitxer.createNewFile();
		}
		
		try {
			
			//Escrivim en el fitxer
		    escriure.write("Nom Usuari/a : " + nom + "\n"); 
		    escriure.write("Encerts : " + contaEncerts + "\r\n"); 
		    escriure.close();

		} catch (IOException ioe) {
			  ioe.printStackTrace();
		}
		
		scanner.close();   
			 
	}

	}

