package apt.pro.service;

import java.util.List;

import apt.pro.domain.Appointment;

public interface AppointmentService {
	
	List<Appointment> getAllAppointments(String searchQuery);
	Appointment save(Appointment appointment);
	Appointment update(Appointment appointment);
	Appointment get(long id);
	List<Appointment> searchAppointment(String searchQeury);
	

}
