package springs.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import springs.dto.Album;

@Repository
public interface AlbumRepo extends JpaRepository<Album,Integer> {

	Album findByAlbumName(String tempalbum);

	List<Album> findTop5ByOrderByAlbumNameAsc();

}
