package tasca104Ex1Testing;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.DisplayNameGeneration;
import org.junit.jupiter.api.DisplayNameGenerator;
import org.junit.jupiter.api.Nested;

class MesosTest {

	@Nested
	@DisplayNameGeneration(DisplayNameGenerator.ReplaceUnderscores.class)
	class Un_array_de_mesos_es_permes{
		
		@Test
		void test_array_te_12_posicions() {
			int numeroMesos = 12;
			Month mesos = new Month();
			assertEquals(numeroMesos, mesos.getMesos().size());
		  }
		@Test
		void test_array_no_te_valor_null() {
			Month mesos = new Month();
			assertNotEquals(mesos, null);
		  }
		@Test
		void test_array_mes_agost_es_el_numero_8() {
			Month mesos = new Month();
			String mesAgost = new String("Agost");
			assertEquals(mesAgost, mesos.getMes(7));
		  }
		
	}
	

}
