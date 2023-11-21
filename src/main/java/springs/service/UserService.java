package springs.service;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import springs.dto.UserDto;
import springs.repository.UserRepo;

@Service
@AllArgsConstructor
public class UserService {

	private final UserRepo rep;
	private final Email emails;

	public void add(UserDto model) {
		UserDto dto=new UserDto();
		dto.setFirstname(model.getFirstname());
		dto.setLastname(model.getLastname());
		dto.setEmail(model.getEmail());
		dto.setUsername(model.getUsername());
		dto.setPassword(model.getPassword());
		rep.save(dto);
		emails.email(dto);
	}
}
