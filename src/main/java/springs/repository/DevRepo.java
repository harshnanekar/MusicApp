package springs.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import springs.dto.SongType;

@Repository
public interface DevRepo extends JpaRepository<SongType,Integer>{


	List<SongType> findTop5ByStype(String string);

	SongType findByLord(String name);

	SongType findByStype(String string);


}
