package apt.pro.controller;


import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import apt.pro.domain.Appointment;
import apt.pro.service.AppointmentService;

@Controller
public class AppointmentController {
	
	@Autowired
	AppointmentService service;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String home(Model model) {
	return "home";
	}
	
	@RequestMapping(value="/createAppt", method = RequestMethod.POST)
	public String createAppointment(@Valid @ModelAttribute("appt")Appointment appointment, BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			model.addAttribute("errors", result.getAllErrors());			
			return "home";
		}
		
		service.save(appointment);
		
		return "redirect:/";
		
	}
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public @ResponseBody List<Appointment> search(@RequestParam("searchQeury") String searchQuery) {
		
		List<Appointment> appointments = service.getAllAppointments(searchQuery);
		
		
		return appointments;
	}

}
