package springs.dto;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="User")
@Getter
@Setter
public class UserDto {

	@Id
	@GenericGenerator(name="auto", strategy = "increment")
	@GeneratedValue(generator="auto")
	@Column(name="Id")
	private int id;
	
	@Column(name="Firstname")
	private String firstname;
	
	@Column(name="Lastname")
	private String lastname;
	
	@Column(name="Username")
	private String username;

	@Column(name="password")
	private String password;
	
	@Column(name="Email")
	private String email;
	
	@Column(name="Otp")
	private String otp;
	
}
