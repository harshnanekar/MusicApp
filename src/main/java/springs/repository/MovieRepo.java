package springs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import springs.dto.Movie;

@Repository
public interface MovieRepo extends JpaRepository<Movie,Integer>{

	Movie findByMovieName(String tempmovie);


}
