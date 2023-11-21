package springs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import springs.dto.UserDto;

@Repository
public interface UserRepo extends JpaRepository<UserDto,Integer>{

	int countByUsernameAndPassword(String username, String password);


	UserDto findByEmail(String email);


	int countByEmail(String email);


	int countByEmailAndOtp(String email, String otp);


	UserDto findByEmailAndOtp(String email, String otp);


	UserDto findByUsername(String g);

}
