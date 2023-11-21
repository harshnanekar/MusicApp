package springs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
import springs.dto.Songs;
import springs.repository.SongRepo;

@AllArgsConstructor
@RestController
@RequestMapping("/Song2")
public class Song2Ctrl {
	

	private final SongRepo rep;

	@PostMapping(value="/add",headers = "Accept=application/json")
	public String add(@RequestBody Songs model  ) {
		Songs s= rep.getById(model.getId());
		int count=s.getPlays()+model.getPlays();
		Songs s1= rep.getById(model.getId());
		s1.setPlays(count);
		rep.save(s1);
		return "Added";
	}
	
	@PostMapping(value="/view",headers = "Accept=application/json")
	public String view(@RequestBody Songs model) {
		rep.findByMusic(model.getMusic());
		return "Viewed";
	}
    
	@GetMapping("/view")
	public List<Songs> languages(){
		return rep.findAll();
	}
	

	
}
