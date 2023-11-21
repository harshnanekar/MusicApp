package springs.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import springs.dto.Saved;
import springs.dto.Songs;
import springs.dto.UserDto;

@Repository
public interface SaveRepo extends JpaRepository<Saved,Integer>{


	List<Saved> findByUser(UserDto dto);

}
