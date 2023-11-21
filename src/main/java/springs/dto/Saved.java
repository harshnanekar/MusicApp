package springs.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Entity
@Table(name="Saved")
@Data
public class Saved {

	@Id
	@GenericGenerator(name="auto", strategy = "increment")
	@GeneratedValue(generator="auto")
	@Column(name="Id")
	private int id;
	
	@ManyToOne
	private UserDto user;
	
	@ManyToOne
	private Songs song;
}
