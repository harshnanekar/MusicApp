package springs.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="Songs")
@Data
public class Songs {

	@Id
	@GenericGenerator(name="auto", strategy = "increment")
	@GeneratedValue(generator="auto")
	@Column(name="Id")
	private int id;
	
	@Column(name="song")
	private String song;
	
	@Column(name="plays")
	private int plays;
	
	@Column(name="music")
	private String music;
	
	@Column(name="Composer")
	private String composer;
	
	@Column(name="Lyrics")
	private String lyrics;
	
	@Column(name="singers")
	private String singers;
	
	@ManyToOne
	private Album album;
	
	@ManyToOne
	private Artist artist;
	
	@ManyToOne
	private Movie movie;
	
	@ManyToOne
	private SongType type;
	
	@Column(name="musicPhoto")
	private String musicPhoto;
	
	@Transient
	MultipartFile mphoto;
	
	@Transient
	MultipartFile songs;
	
	@Transient
	private String tempart;
	
	@Transient
	private String tempalbum;
	
	@Transient
	private String tempmovie;
	
	@Column(name="Language")
	private String language;

	@Transient
	private String search;
	
}
