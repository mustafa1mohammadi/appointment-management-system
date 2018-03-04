package apt.pro.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import apt.pro.domain.Appointment;


@Repository
public interface AppointmentRepository extends CrudRepository<Appointment, Long>{

	
	@Query("SELECT p FROM Appointment p where p.description like ?1%")
	public List<Appointment> search(@Param("searchQeury") String searchQeury);
}
