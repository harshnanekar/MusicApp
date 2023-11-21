package springs.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="Album")
@Data
public class Album {

	@Id
	@GenericGenerator(name="auto", strategy = "increment")
	@GeneratedValue(generator="auto")
	@Column(name="Id")
	private int id;

	@Column(name="AlbumName")
	private String albumName;
	
	@Column(name="AlbumPhoto")
	private String albumPhoto;
	
	@ManyToOne
	private Artist artist;
	
	@Transient
	MultipartFile photo;
	
	@Transient
	private String art;
	
}
