package springs.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import springs.dto.Artist;

@Repository
public interface ArtistRepo extends JpaRepository<Artist,Integer> {

	Artist findByArtistName(String art);

	int countByArtistName(String artistName);

	List<Artist> findTop5ByOrderByArtistNameAsc();

}
