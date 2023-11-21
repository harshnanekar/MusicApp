package springs.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import springs.dto.RegionLang;

public interface RegRepo extends JpaRepository<RegionLang,Integer> {

}
