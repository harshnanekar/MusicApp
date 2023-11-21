package springs.service;

import java.util.Date;
import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

import springs.dto.UserDto;
import springs.repository.UserRepo;

@Service
public class GetmailService implements GetEmail{
	
	private JavaMailSender mail;
	
	@Autowired
	private  UserRepo rep;
	
	@Value("${spring.mail.username}")
   private String sender;
	
	@Autowired
	private GetmailService(JavaMailSender mail) {
		this.mail=mail;
	}
	
	Random rnd=new Random();
	int num=rnd.nextInt(99999);
	
	@Override
	public String getmail(UserDto dto) {
		
		
		MimeMessagePreparator mime=new MimeMessagePreparator(){

			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper m=new MimeMessageHelper(mimeMessage,false,"utf-8");
				m.setTo(dto.getEmail());
				m.setSubject("Reset Password");
				m.setText("Your otp for password reset is " + num);
				m.setSentDate(new Date());
				m.setFrom(sender);
				
			}
			
		};
		this.mail.send(mime);
		
		
		UserDto d=rep.getById(dto.getId());
		String s=String.valueOf(num);
		d.setOtp(s);
		rep.save(d);
			return "Mail Sended Successfully";
	}

}
