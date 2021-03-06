import java.util.Date;
import java.util.Properties;
 
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;

import member.model.server.PartyService;
 
public class SendMailTest {
 
    public static void main(String[] args) {
         
        Properties p = System.getProperties();
        p.put("mail.smtp.starttls.enable", "true");     // gmail은 무조건 true 고정
        p.put("mail.smtp.host", "smtp.gmail.com");      // smtp 서버 주소
        p.put("mail.smtp.auth","true");                 // gmail은 무조건 true 고정
        p.put("mail.smtp.port", "587");                 // gmail 포트
           
        Authenticator auth = new MyAuthentication();
         
        //session 생성 및  MimeMessage생성
        Session session = Session.getDefaultInstance(p, auth);
        MimeMessage msg = new MimeMessage(session);
         
        try{
            //편지보낸시간
            msg.setSentDate(new Date());
             
            InternetAddress from = new InternetAddress() ;
             
             
            from = new InternetAddress("ldh8206<ldh8206@gmail.com>");
             
            // 이메일 발신자
            msg.setFrom(from);
             
             
            // 이메일 수신자
            InternetAddress to = new InternetAddress("daum610@naver.com");
            msg.setRecipient(Message.RecipientType.TO, to);
             
            // 이메일 제목
            msg.setSubject("메일 전송 테스트", "UTF-8");
             
            // 이메일 내용
            msg.setText("내용", "UTF-8");
             
            // 이메일 헤더
            msg.setHeader("content-Type", "text/html");
             
            
            int result = new PartyService().updatePwd(userid, pwd);
    		
    		RequestDispatcher view = null;
    		if(result > 0){
    			view = request.getRequestDispatcher("views/main1/member/successResetPwd.jsp");
    			request.setAttribute("message", "비밀번호 변경에 성공하였습니다.");
    			view.forward(request, response);
    		}else{
    			view = request.getRequestDispatcher("views/main1/member/memberError.jsp");
    			request.setAttribute("message", "비밀번호 변경에 실패하였습니다.");
    			view.forward(request, response);
    		}
            
            
            //메일보내기
            javax.mail.Transport.send(msg);
             
        }catch (AddressException addr_e) {
            addr_e.printStackTrace();
        }catch (MessagingException msg_e) {
            msg_e.printStackTrace();
        }
    }
 
}
 
 
class MyAuthentication extends Authenticator {
      
    PasswordAuthentication pa;
    
 
    public MyAuthentication(){
         
        String id = "ldh8206@gmail.com";       // 구글 ID
        String pw = "niniking";          // 구글 비밀번호
 
        // ID와 비밀번호를 입력한다.
        pa = new PasswordAuthentication(id, pw);
      
    }
 
    // 시스템에서 사용하는 인증정보
    public PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }
}
