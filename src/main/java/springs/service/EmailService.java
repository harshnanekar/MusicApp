package springs.service;

import java.util.Date;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

import springs.dto.UserDto;

@Service
public class EmailService implements Email{
	
	private JavaMailSender mails;
	
	@Value("${spring.mail.username}")
	private String sender;
	
	@Autowired
	private EmailService(JavaMailSender mails) {
		this.mails=mails;
	}

	@Override
	public String email(UserDto dto) {
		MimeMessagePreparator mim= new MimeMessagePreparator() {

			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
			MimeMessageHelper mime=new MimeMessageHelper(mimeMessage,false,"utf-8");
			mime.setTo(dto.getEmail());
			mime.setSentDate(new Date());
			mime.setText("Welcome " + dto.getFirstname() + " " + dto.getLastname() + " To अपनाMusic, Hope you find the best music!!");
			mime.setSubject("Registration");
			mime.setFrom(sender);
		}
			
		};
		
		this.mails.send(mim);
		return "Added Successfully";
	}

}
