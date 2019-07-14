package testing;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.pe.sanpedro.model.HorarioMedico;
import com.pe.sanpedro.model.Usuario;
import com.pe.sanpedro.model.horasTurno;
import com.pe.sanpedro.model.paciente;
import com.pe.sanpedro.service.EspecialidadService;
import com.pe.sanpedro.service.HorarioMedicoService;
import com.pe.sanpedro.service.pacienteService;

public class listar {
	
	
	public static void listar2 () throws Exception {
		EspecialidadService es = new EspecialidadService(); 
		es.listaEspecialidades();
	}
	
	public static void main(String[] args) throws Exception {
		//listar2();
		
		//pacienteService s = new pacienteService();
		
		HorarioMedicoService ser = new HorarioMedicoService();
		horasTurno h = new horasTurno();
		
		List<horasTurno> lista = new ArrayList<>();
		
		lista = ser.listHoras();
		
		for (horasTurno ht : lista) {
			System.out.println(ht.getDescripcion()+" " + ht.getIdTurno());
		}
		
		
//		paciente p = new paciente();
//		p.setCelular("123456789");
//		p.setCorreo("asd@gmail.com");
//		p.setDireccion("trujillo");
//		p.setIdPaciente(1);
//		//int idPaciente = 1;
//		String contra ="jordy";
//		String nueva="sad";
//		int id =2;
//		Usuario usu = new Usuario();
//		usu.setPassword("jordy");
//		usu.setNuevaContra("123456");
//		usu.setIdUsuario(2);
//		
//		
//		s.actualizarContra(usu);
		
		
//		int idMedico = 1;
//		List<HorarioMedico> lst = new ArrayList<>();
//		HorarioMedicoService ser = new HorarioMedicoService();
//		lst = ser.listadoHorario(idMedico);
//		
//		for (HorarioMedico horarioMedico : lst) {
//			Date objDate = new Date(); // Sistema actual La fecha y la hora se asignan a objDate 
//			 objDate = horarioMedico.getFechaTurno();
//			System.out.println(objDate); 
//	        String strDateFormat = "dd-MMM-YY"; // El formato de fecha está especificado  
//	        SimpleDateFormat objSDF = new SimpleDateFormat(strDateFormat); // La cadena de formato de fecha se pasa como un argumento al objeto 
//	       System.out.println(objSDF.format(objDate));
//	       
//			
//			
//			System.out.println(horarioMedico.getFechaTurno());
//		}
		
//		Date fecha = new Date();
//		String strDateFormat = "dd-MMM-YY hh:mm:ss"; // El formato de fecha está especificado  
//       SimpleDateFormat objSDF = new SimpleDateFormat(strDateFormat);
//		System.out.println (objSDF.format(fecha));
	}
}
