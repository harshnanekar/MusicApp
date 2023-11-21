package springs.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.sql.Timestamp;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import springs.dto.Album;
import springs.dto.Artist;
import springs.dto.Movie;
import springs.dto.SongType;
import springs.dto.Songs;
import springs.repository.AlbumRepo;
import springs.repository.ArtistRepo;
import springs.repository.DevRepo;
import springs.repository.MovieRepo;
import springs.repository.SongRepo;

@AllArgsConstructor
@Service
public class SongService {
	
	private final SongRepo rep;
	private final MovieRepo repo;
	private final ArtistRepo rps;
	private final AlbumRepo rpe;
	private final DevRepo dev;
	
	public void add(Songs model) throws IOException {
		Songs s=new Songs();
		s.setSong(model.getSong());
		s.setMusic(setsong(model.getSongs()));
		s.setComposer(model.getComposer());
		s.setLyrics(model.getLyrics());
		s.setLanguage(model.getLanguage());
		s.setMusicPhoto(setsongimg(model.getMphoto()));
		s.setSingers(model.getSingers());
		rep.save(s);
		
	}

	private String setsongimg(MultipartFile mphoto) throws IOException {
		String path="/resource/image";
		Timestamp ts=new Timestamp(System.currentTimeMillis());
		String filename=mphoto.getOriginalFilename()+ts.getTime()+".jpg";
		path=path+filename;
		File file=new File("C:\\Users\\Harshal Nanekar\\Downloads\\Music1\\Music\\src\\main\\webapp\\resource\\image" + filename);
		Files.copy(mphoto.getInputStream(), file.toPath());
		return path;
	}

	private String setsong(MultipartFile songs) throws IOException {
		String path= "/nsong/msongs";
		Timestamp ts=new Timestamp(System.currentTimeMillis());
		String filename=songs.getOriginalFilename()+ts.getTime()+".mp3";
		path=path+filename;
		
		File file=new File("C:\\Users\\Harshal Nanekar\\Downloads\\Music1\\Music\\src\\main\\webapp\\nsong\\msongs" + filename );
		Files.copy(songs.getInputStream(), file.toPath());
		return path;
	}

	public void movieadd(Movie model) throws IOException {
		
		Movie m=new Movie();
		m.setMovieName(model.getMovieName());
		m.setLanguage(model.getLanguage());
		m.setNewpic(setmoviess(model.getPics()));
		
		repo.save(m);
		
	}

	private String setmoviess(MultipartFile pics) throws IOException {
		String path="/resource/image";
		Timestamp ts=new Timestamp(System.currentTimeMillis());
		String filename=pics.getOriginalFilename()+ ts.getTime()+".jpg";
		path=path+filename;
		File file=new File("C:\\Users\\Harshal Nanekar\\Downloads\\Music1\\Music\\src\\main\\webapp\\resource\\image" + filename);
		Files.copy(pics.getInputStream(), file.toPath());
		return path;
	}

	public void artistadd(Artist model) throws IOException {
		Artist a=new Artist();
		a.setArtistName(model.getArtistName());
		a.setArtistPhoto(setartist(model.getPhoto()));
		rps.save(a);
		
	}

	private String setartist(MultipartFile photo) throws IOException {
		String path="/resource/image";
		Timestamp ts=new Timestamp(System.currentTimeMillis());
		String filename=photo.getOriginalFilename()+ ts.getTime()+".jpg";
		path=path+filename;
		File file=new File("C:\\Users\\Harshal Nanekar\\Downloads\\Music1\\Music\\src\\main\\webapp\\resource\\image" + filename);
		Files.copy(photo.getInputStream(), file.toPath());
		return path;
	}

	public void albumadd(Album model) throws IOException {
		
		Artist as=rps.findByArtistName(model.getArt());
	Album a=new Album();
	a.setAlbumName(model.getAlbumName());
	a.setAlbumPhoto(setalbum(model.getPhoto()));
	a.setArtist(as);

		rpe.save(a);
	}

	private String setalbum(MultipartFile photo) throws IOException {
		String path="/resource/image";
		Timestamp ts=new Timestamp(System.currentTimeMillis());
		String filename=photo.getOriginalFilename()+ ts.getTime()+".jpg";
		path=path+filename;
		File file=new File("C:\\Users\\Harshal Nanekar\\Downloads\\Music1\\Music\\src\\main\\webapp\\resource\\image" + filename);
		Files.copy(photo.getInputStream(), file.toPath());
		return path;
		
	}

	public void update(Artist model) throws IOException {
		Artist a=rps.getById(model.getId());
		a.setArtistName(model.getArtistName());
		a.setArtistPhoto(setartist(model.getPhoto()));
		rps.save(a);
		
	}

	public void addtype(SongType model) throws IOException {
		SongType s=new SongType();
		s.setLanguage(model.getLanguage());
		s.setStype(model.getStype());
		String ch=model.getStype();
	if(ch.toLowerCase().equals("devotional")) {
			s.setLord(model.getLord());
			
			s.setSpic(setlpic(model.getMphoto()));
	}
		dev.save(s);
		
	}

	private String setlpic(MultipartFile mphoto) throws IOException {
	  String path="/resource/image";
	  Timestamp ts=new Timestamp(System.currentTimeMillis());
	  String filename=mphoto.getOriginalFilename()+ ts.getTime() +".jpg";
	  path=path + filename;
	  File file=new File("C:\\Users\\Harshal Nanekar\\Downloads\\Music1\\Music\\src\\main\\webapp\\resource\\image" + filename);
		Files.copy(mphoto.getInputStream(),file.toPath());
			  return path;
	}


}
