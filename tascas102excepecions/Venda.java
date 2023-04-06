package tascas102excepecions;

public class Venda {
	
	Producte[] productes;
	double preuTotal;
	
	public Venda() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Venda(Producte[] productes) {
		super();
		setProductes(productes);
	}
	
	public Producte[] getProductes() {
		return productes;
	}

	public void setProductes(Producte[] productes) {
		this.productes = productes;
	}

	public double getPreuTotal() {
		return preuTotal;
	}

	public void setPreuTotal(double preuTotal) {
		this.preuTotal = preuTotal;
	}


	public void calcularTotal () throws VendaBuidaException{
		try {
			
			if (productes == null ) {
				throw new VendaBuidaException("per fer una venda primer has d'afegir producte");
			}
			
			double suma= 0.0;

	        for (int i=0 ; i<productes.length ;i++){
	            suma += productes[i].getPreu();
	        }
	        setPreuTotal(suma);
	        System.out.println("El total de venda és " + getPreuTotal());

	        //Provoquem una excepcio ArrayIndexOutOfBoundsException que consisteix en cridar un producte que no existeix a la coleccio, per exemple el producte 6
	        productes[6].setNom("Jaqueta");
	        
	        
		} catch (VendaBuidaException ex) {
			System.err.println(ex.getMessage());
		
		} catch (ArrayIndexOutOfBoundsException e) {
            System.err.println("S'ha cridat a un producte que no es troba dintre de la colleció, Excepcio ArrayIndexOutOfBoundsException : " + e.getMessage());
	    }
	}
	
}	
