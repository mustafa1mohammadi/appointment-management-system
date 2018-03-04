package apt.pro.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import apt.pro.domain.Appointment;
import apt.pro.repository.AppointmentRepository;
import apt.pro.service.AppointmentService;

@Service
@org.springframework.transaction.annotation.Transactional
public class AppointmenetServiceImpl implements AppointmentService{

	
	@Autowired
	AppointmentRepository repository;

	@Override
	public List<Appointment> getAllAppointments(String searchQuery) {
		
		if(searchQuery.trim().isEmpty()) {
			return (List<Appointment>) repository.findAll();	
		}
		
		return repository.search(searchQuery);
		
	}

	@Override
	public Appointment save(Appointment appointment) {
		
		return repository.save(appointment);
	}

	@Override
	public Appointment update(Appointment appointment) {
		
		return repository.save(appointment);
	}

	@Override
	public Appointment get(long id) {
		
		return repository.findOne(id);
	}

	@Override
	public List<Appointment> searchAppointment(String searchQeury) {
		
		return repository.search(searchQeury);
	}

}
