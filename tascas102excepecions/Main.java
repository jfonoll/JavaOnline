package tascas102excepecions;

public class Main {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub

		//Crea atribut de col.leccio Productes usant [] 
		Producte[] productes = null; 
		Venda venda;
		
		//Instanciem classe venda mitjançant variable venda 
		//li passem parametre producte a null per llançar l'excepcio personalitzada VendaBuidaException
		//Mostrara el missatge que son necessaris productes per caluclar la suma 
		venda = new Venda(productes);
		venda.calcularTotal();
		
		//Creem una variable producte2 que es de classe productes amb una col.leccio de 5 productes 
		//i els donem no i preu per cadascun
		Producte[] productes2 = new Producte[5];
		venda = new Venda(productes);
		productes2[0] = new Producte("Camisa" , 50.0); 
		productes2[1] = new Producte("Pantalons" , 78.9);
		productes2[2] = new Producte("Mitjons" , 10.0);
		productes2[3] = new Producte("Ulleres" , 112.2);
		productes2[4] = new Producte("Guants" , 12.3);

		//Creem variable venta instanciant la classe venda i en criem el metode calcularTotal() 
		//i ens donara la suma dels productes introduits a la coleccio
		//Tambe crearem una excepcio de fora de limits en un array en la part final per llençar excepcio ArrayIndexOutOfBoundsException
		venda = new Venda(productes2);
		venda.calcularTotal();
		
	}

}
