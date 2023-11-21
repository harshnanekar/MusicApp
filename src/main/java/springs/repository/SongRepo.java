package springs.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import springs.dto.Album;
import springs.dto.Artist;
import springs.dto.SongType;
import springs.dto.Songs;

@Repository
public interface SongRepo extends JpaRepository<Songs,Integer>{

	Songs findBySong(String song);

	List<Songs> findByArtist(Artist a);

	List<Songs> findTop5ByOrderBySongAsc();

	List<Songs> findTop5ByLanguage(String string);

	Songs findByIdAndMusic(int id, String name);

	Songs findByMusic(String name);

	List<Songs> findByAlbum(Album alb);

	List<Songs> findByLanguage(String names);

	List<Songs> findBySongContains(String search);

	List<Songs> findByType(SongType s);

	List<Songs> findTop5ByType(SongType langs);

	

	


}
