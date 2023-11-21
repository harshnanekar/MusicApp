package springs.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
import lombok.ToString;
import springs.dto.Album;
import springs.dto.Artist;
import springs.dto.Movie;
import springs.dto.RegionLang;
import springs.dto.Saved;
import springs.dto.SongType;
import springs.dto.Songs;
import springs.dto.UserDto;
import springs.repository.AlbumRepo;
import springs.repository.ArtistRepo;
import springs.repository.DevRepo;
import springs.repository.MovieRepo;
import springs.repository.RegRepo;
import springs.repository.SaveRepo;
import springs.repository.SongRepo;
import springs.repository.UserRepo;
import springs.service.SongService;

@ToString
@AllArgsConstructor
@RequestMapping("/Songs")
@Controller
public class SongCtrl {
	private final SongService service;
	private final SongRepo rep;
	private final ArtistRepo reps;
	private final AlbumRepo repi;
	private final MovieRepo repp;
	private final RegRepo reg;
	private final DevRepo dev;
	private final UserRepo urep;
	private final SaveRepo srep;
	
	@GetMapping("/main")
	public String main()  {
		return "main";
	}
	
	
	@GetMapping("/add")
	public String add()  {
		return "Sadd";
	}

	@PostMapping("/added")
	public String add(@ModelAttribute Songs model) throws IOException {
		service.add(model);
		return "Added";
	}
	@GetMapping("/admovie")
	public String admovie() {
		return "Admovie";
		
	}
	@PostMapping("/movieadd")
	public String movieadd(@ModelAttribute Movie model) throws IOException  {
		service.movieadd(model);
		return "Added";
	}
	@GetMapping("/adartist")
	public String adartist() {
		return "AdArtist";
		
	}
	@PostMapping("/artistadd")
	public String artistadd(@ModelAttribute Artist model) throws IOException  {
		service.artistadd(model);
		return "Added";
	}
	@GetMapping("/adalbum")
	public String adalbum() {
		return "AlbumAdd";
		
	}
	@PostMapping("/albumadded")
	public String artistadd(@ModelAttribute Album model) throws IOException  {
		service.albumadd(model);
		return "Added";
	}
	@GetMapping("updateart")
	public String updateartist() {
		return "ArtistUpdate";	
	}
	@PostMapping("/update")
	public String update(@ModelAttribute Artist model) throws IOException {
		service.update(model);
		return "Added";
	}
	
	@GetMapping("/viewartist")
	public ModelAndView artist() {
		List<Artist> a=reps.findAll();
		return new ModelAndView("ViewArtist","dao",a);
		
	}
	@GetMapping("/viewdar")
	public ModelAndView artistsong(@RequestParam String name) {
		Artist a=reps.findByArtistName(name);
	List<Songs> ra=rep.findByArtist(a);
		return new ModelAndView("ViewArtist2","dao",ra);
		
	}
	
	@GetMapping("/adsongart")
	public String adsongsfarts() {
		return "Sartist";
	}
	@PostMapping("/sadded")
	public String sadded(@ModelAttribute Songs model) {
		Artist a=reps.findByArtistName(model.getTempart());
		Songs s=rep.findBySong(model.getSong());
		Songs ss=rep.getById(s.getId());
		ss.setArtist(a);
		rep.save(ss);
		return "Added";
	}
	
	@GetMapping("/adsongalb")
	public String saradd(){
		return "Salbum";
	}
	@PostMapping("/albadded")
	public String albadded(@ModelAttribute Songs model) {
		Album a=repi.findByAlbumName(model.getTempalbum());
		Songs s=rep.findBySong(model.getSong());
		Songs ss=rep.getById(s.getId());
		ss.setAlbum(a);
		rep.save(ss);
		return "Added";
	}
	@GetMapping("/adsongmov")
	public String smovadd(){
		return "Smovie";
	}
	@PostMapping("/smovadded")
	public String smovadded(@ModelAttribute Songs model) {
		Movie a=repp.findByMovieName(model.getTempmovie());
		Songs s=rep.findBySong(model.getSong());
		Songs ss=rep.getById(s.getId());
		ss.setMovie(a);
		rep.save(ss);
		return "Added";
	}
	
	@GetMapping("/mainmusic")
	public ModelAndView mainmusic(@RequestParam String name,HttpSession session) {
	
		String g=(String) session.getAttribute("key1");
		
		Songs s=rep.findByMusic(name);
		return new ModelAndView("MainMusic","dao",s);
		
	}

	@GetMapping("/viewalbums")
	public ModelAndView views() {
		
		List<Album> s=repi.findAll();
		return new ModelAndView("AlbumView","dao",s);
		
	}
	@GetMapping("/viewpartalbums")
	public ModelAndView viewall(@RequestParam String name) {
		Album alb=repi.findByAlbumName(name);
		List<Songs> s=rep.findByAlbum(alb);
		return new ModelAndView("ParAlbum","dao",s);
		
	}
	@GetMapping("/viewallsongs")
	public ModelAndView viewallsongs(HttpSession session) {
		String g=(String) session.getAttribute("key1");
		UserDto dto=urep.findByUsername(g);
		
		List<RegionLang> li=reg.findAll();
		List<Saved> sv=srep.findByUser(dto);
		for(Saved sd:sv) {
			System.out.print(sd.getSong().getSong()+ " ");
		}
		
		ModelMap map=new ModelMap();
		map.addAttribute("key3",li);
		map.addAttribute("key2",sv);
		map.addAttribute("key4",dto);
		return new ModelAndView("ViewAllSongs","dao",map);
	}
	
	@GetMapping("/checklang")
	public ModelAndView checklang(@RequestParam String lname) {
		List<Songs> li=rep.findByLanguage(lname);
		return new ModelAndView("lang","dao",li);
	}
	@PostMapping("/searchsong")
	public ModelAndView searchsong(@ModelAttribute Songs model) {
		List<Songs> li=rep.findBySongContains(model.getSearch());
		return new ModelAndView("Search","dao",li);
		
	}
	
	@GetMapping("/type")
	public String gettype() {
		return "Type";
	}

	@PostMapping("/typeadd")
	public String typeadd(@ModelAttribute SongType model) throws IOException {
		service.addtype(model);
		return "Added";
	}
	@GetMapping("/checklord")
	public ModelAndView checklord(@RequestParam String name) {
		SongType s=dev.findByLord(name);
		List<Songs> li=rep.findByType(s);
		return new ModelAndView("CheckLord","dao",li);
	}
	@GetMapping("/TopMarathi")
	public ModelAndView top() {
		List<Songs> li=rep.findByLanguage("Marathi");
		return new ModelAndView("Marathi","dao",li);
	}
	@GetMapping("/saved")
	public ModelAndView saved(HttpSession session,@RequestParam String name ) {
		String gets="";
		boolean val=false;
		String g=(String) session.getAttribute("key1");
		UserDto dto=urep.findByUsername(g);
		Songs s= rep.findByMusic(name);
		List<Saved> li=srep.findByUser(dto);
		for(Saved save:li) {
			if(save.getSong().getMusic().equals(name)) {
				val=true;
			}
		}
		if(val==false) {
			Saved ss=new Saved();
		     ss.setUser(dto);
		     ss.setSong(s);
			srep.save(ss);
			gets="ViewAllSongs";
		}else {
			gets="Svalid";
		}
		
		List<RegionLang> lis=reg.findAll();
		List<Saved> sv=srep.findByUser(dto);
		ModelMap map=new ModelMap();
		map.addAttribute("key3",lis);
		map.addAttribute("key2",sv);
		map.addAttribute("key4",dto);
		
		return new ModelAndView(gets,"dao",map);
	}	
	
	@GetMapping("/fullsong")
	public ModelAndView fullsong() {
		List<Songs> li=rep.findAll();
		return new ModelAndView("fullsong","dao",li);
	}
	@GetMapping("/devallsong")
	public ModelAndView devallsong() {
		
		List<SongType> li=dev.findAll();
		
		return new ModelAndView("Checking","dao",li);
	}
	@GetMapping("/All90")
	public ModelAndView All() {
		
		SongType s=dev.findByStype("90's");
		List<Songs> li=rep.findByType(s);
		
		return new ModelAndView("All90","dao",li);
	}
	
	
	

}
