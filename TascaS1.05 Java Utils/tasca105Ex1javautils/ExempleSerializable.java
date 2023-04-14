package tasca105Ex1javautils;

import java.io.*;

class ClasseSerialitzable implements java.io.Serializable
{
	private static final long serialVersionUID = 1L;
	public int esunint;
	public String esunstring;

	// Default constructor
	public ClasseSerialitzable(int a, String b)
	{
		this.esunint = a;
		this.esunstring = b;
	}

}

class ExempleSerializable
{
	public static void main(String[] args)
	{
		ClasseSerialitzable object = new ClasseSerialitzable(1, "String de prova");
		String nomfitxer = "fitxer.ser";
		
		// Serialitzacio al crear el object a paritr de ClasseSerialitzable es crea un objecte serialitzat 
		try
		{
			//Guardem l'objecte en un fitxer
			FileOutputStream fitxer = new FileOutputStream(nomfitxer);
			ObjectOutputStream out = new ObjectOutputStream(fitxer);
			
			// Metode per serialitzar l'objecte
			out.writeObject(object);
			out.close();
			fitxer.close();
			
						
			System.out.println("L'objecte s'ha serialitzat");

		}
		
		catch(IOException e)
		{
			System.out.println("Es llença IOException degut a " + e.getMessage());
		}

		ClasseSerialitzable object1 = null;

		// Deserialitzacio
		try
		{
			// Llegim l'objecte d'un fitxer
			FileInputStream fitxer = new FileInputStream(nomfitxer);
			ObjectInputStream inputStream = new ObjectInputStream(fitxer);
			
			// Metode per deserialitzar l'objecte, es fa un cast de la classe que implementa de Serialization
			object1 = (ClasseSerialitzable)inputStream.readObject();
			
			inputStream.close();
			fitxer.close();
			
			System.out.println("L'objecte s'ha desserialitzat ");
			System.out.println("es un int = " + object1.esunint);
			System.out.println("es un String = " + object1.esunstring);
		}
		
		catch(IOException e)
		{
			System.out.println("IOException degut a " + e.getMessage());
		}
		
		catch(ClassNotFoundException e)
		{
			System.out.println("ClassNotFoundException degut a " +e.getMessage());
		}

	}
}
