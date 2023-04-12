package tasca104Ex1Testing;

import java.util.ArrayList;

public class Month {
	
	public Month() {
		super();
		
		mesos.add("Gener");
		mesos.add("Febrer");
		mesos.add("Març");
		mesos.add("Abril");
		mesos.add("Maig");
		mesos.add("Juny");
		mesos.add("Juliol");
		mesos.add("Agost");
		mesos.add("Setembre");
		mesos.add("Octubre");
		mesos.add("Novembre");
		mesos.add("Desembre");

		System.out.println("LLista mesos ");
		
	}
	public ArrayList<String> getMesos() {
		return mesos;
	}
	public void setMesos(ArrayList<String>  mesos) {
		this.mesos = mesos;
	}
	
	public String getMes(int mes) {
		return mesos.get(mes);
	}
	ArrayList<String> mesos  = new ArrayList<String>();
	
	
}
