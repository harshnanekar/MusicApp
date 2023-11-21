package springs.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="Movie")
@Getter
@Setter
public class Movie {

	@Id
	@GenericGenerator(name="auto", strategy = "increment")
	@GeneratedValue(generator="auto")
	@Column(name="Id")
	private int id;
	
	@Column(name="MovieName")
	private String movieName;
	
	@Column(name="newpic")
	private String newpic;
	
	@Transient
	MultipartFile pics;
	
	@Column(name="language")
	private String language;
	
}
