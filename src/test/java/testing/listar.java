package testing;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.pe.sanpedro.model.HorarioMedico;
import com.pe.sanpedro.service.EspecialidadService;
import com.pe.sanpedro.service.HorarioMedicoService;

public class listar {
	
	
	public static void listar2 () throws Exception {
		EspecialidadService es = new EspecialidadService(); 
		es.listaEspecialidades();
	}
	
	public static void main(String[] args) throws Exception {
		//listar2();
		
		int idMedico = 1;
		List<HorarioMedico> lst = new ArrayList<>();
		HorarioMedicoService ser = new HorarioMedicoService();
		lst = ser.listadoHorario(idMedico);
		
		for (HorarioMedico horarioMedico : lst) {
			Date objDate = new Date(); // Sistema actual La fecha y la hora se asignan a objDate 
			 objDate = horarioMedico.getFechaTurno();
			System.out.println(objDate); 
	        String strDateFormat = "dd-MMM-YY"; // El formato de fecha está especificado  
	        SimpleDateFormat objSDF = new SimpleDateFormat(strDateFormat); // La cadena de formato de fecha se pasa como un argumento al objeto 
	       System.out.println(objSDF.format(objDate));
	       
			
			
			System.out.println(horarioMedico.getFechaTurno());
		}
		
//		Date fecha = new Date();
//		String strDateFormat = "dd-MMM-YY hh:mm:ss"; // El formato de fecha está especificado  
//       SimpleDateFormat objSDF = new SimpleDateFormat(strDateFormat);
//		System.out.println (objSDF.format(fecha));
	}
}
