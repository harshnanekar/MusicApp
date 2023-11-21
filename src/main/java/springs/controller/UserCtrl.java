package springs.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
import lombok.ToString;
import springs.dto.Album;
import springs.dto.Artist;
import springs.dto.Movie;
import springs.dto.SongType;
import springs.dto.Songs;
import springs.dto.UserDto;
import springs.repository.AlbumRepo;
import springs.repository.ArtistRepo;
import springs.repository.DevRepo;
import springs.repository.MovieRepo;
import springs.repository.SongRepo;
import springs.repository.UserRepo;
import springs.service.GetEmail;
import springs.service.UserService;

@ToString
@Controller
@RequestMapping("/UserCtrl")
@AllArgsConstructor
public class UserCtrl {
 
	private final SongRepo reps;
	private final AlbumRepo alrep;
	private final UserService service;
	private final UserRepo rep;
	private final GetEmail email;
	private final MovieRepo mov;
	private final ArtistRepo art;
	private final DevRepo dev;
	
	
	@GetMapping("/register")
	public String register() {
		return "register";
	}
	
	@PostMapping("/registered")
	public String register(@ModelAttribute UserDto model) {
		service.add(model);
		return "Resistered";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	@PostMapping("/logged")
	public ModelAndView logged(@ModelAttribute UserDto model,HttpSession session) {
		int count=rep.countByUsernameAndPassword(model.getUsername(),model.getPassword());
		if(count>0) {
			
			session.setAttribute("key1",model.getUsername());
			
			List<Songs> song = reps.findTop5ByOrderBySongAsc();
			List<Album> album = alrep.findTop5ByOrderByAlbumNameAsc();
			List<Songs> lang=reps.findTop5ByLanguage("Marathi");
			List<Artist> artist=art.findTop5ByOrderByArtistNameAsc();
			List<SongType> stype=dev.findTop5ByStype("Devotional");
			
			SongType langs=dev.findByStype("90's");
			List<Songs> songdev = reps.findTop5ByType(langs);
			
			SongType langs1=dev.findByStype("Romantic");
			List<Songs> songdevs = reps.findTop5ByType(langs1);
			
			ModelMap map=new ModelMap();
			map.addAttribute("key1", song);
			map.addAttribute("key2",album);
			map.addAttribute("key3",lang);
			map.addAttribute("key4",artist);
			map.addAttribute("key5",stype);
			map.addAttribute("key6",songdev);
			map.addAttribute("key7",songdevs);
		
			return new ModelAndView("GetSong","daoi",map);
		}
		return new ModelAndView("InvalidLogin");
	}

	@GetMapping("/forgot")
	public String forgot() {
		return "forgot";
	}
	@PostMapping("/forgotted")
	public String forgotted(@ModelAttribute UserDto model) {
		int count=rep.countByEmail(model.getEmail());
		
		if(count>0) {
			UserDto dto=rep.findByEmail(model.getEmail());
			email.getmail(dto);
			return "forgot1";
		}
		return "forgot2";
	}
	@PostMapping("/forgotting")
	public String forgotting(@ModelAttribute UserDto model) {
		int count=rep.countByEmailAndOtp(model.getEmail(),model.getOtp());
		if(count>0) {
			UserDto dto=rep.findByEmailAndOtp(model.getEmail(),model.getOtp());
			UserDto d=rep.getById(dto.getId());
			d.setPassword(model.getPassword());
			rep.save(d);
			return "forgot1";
		}
		return "forgot3";
	}
	
}