package tasca105Ex1javautils;

import java.io.IOException;

public class Main {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		LlistaDirectori llistadirectori = new LlistaDirectori();
		llistadirectori.setDirectori("/home/jordi/It_academy_jfonoll/JavaOnline");
		
		//Exercicis 1,2 i 3 . Directoris i fitxers ordenats alfabeticament, mostrar arbre i guardar en fitxer
		llistadirectori.llistaDirectoriAlfabeticament();
		
		//Exercici 4 LLegir un fitxer TXT demanat per pantalla i mostrar contingut
		llistadirectori.llegirFitxerTxt();
		
		//Exercici 5 Serialitzacio
		//ExempleSerializable.main(args);
		
	}

}
