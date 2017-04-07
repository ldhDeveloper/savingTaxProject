package member.controller;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import member.model.server.PartyService;
import member.model.vo.MyAuthentication;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class SendPwdEmailServlet
 */
@WebServlet("/sendpwd")
public class SendPwdEmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendPwdEmailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		String email = request.getParameter("email");
		System.out.println("email : " + email);
		
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
            InternetAddress to = new InternetAddress(email);
            msg.setRecipient(Message.RecipientType.TO, to);
             
            // 이메일 제목
            msg.setSubject("[안내] 임시 비밀번호 발신 <관리자가 보낸메일>", "UTF-8");
             
            
            char[] charaters = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9'};
            StringBuffer sb = new StringBuffer();
            Random rn = new Random();
            for( int i = 0 ; i < 10 ; i++ ){
                sb.append( charaters[ rn.nextInt( charaters.length ) ] );
            }
            String pw =  sb.toString();
       
            
            String htmlContent = "당신의 임시 비밀번호는 <Strong>" + pw + "</Strong> 입니다. 사이트에 접속해서 로그인 후 비밀번호를 변경하세요.<br>"; 
            htmlContent += "<a href='http://localhost:7660/jsmi/views/main1/member/resetpwdform.jsp?userid=" + userid + "&target='_blank'>홈으로 이동</a>"; 
            msg.setText(htmlContent, "UTF-8", "html"); 

            
            // 이메일 내용
 
             
            // 이메일 헤더
            msg.setHeader("content-Type", "text/html");
            
            int result = new PartyService().updatePwd(userid, pw);
    		
    		RequestDispatcher view = null;
    		if(result > 0){
    			javax.mail.Transport.send(msg);
    			view = request.getRequestDispatcher("views/main1/member/successsendmail.html");
    			request.setAttribute("message", "이메일로 임시비밀번호가 발송되었습니다.");
    			view.forward(request, response);
    		}else{
    			view = request.getRequestDispatcher("views/main1/member/memberError.jsp");
    			request.setAttribute("message", "임시비밀번호 발송에 실패하였습니다.");
    			view.forward(request, response);
    		}
            //메일보내기
            
             
        }catch (AddressException addr_e) {
            addr_e.printStackTrace();
        }catch (MessagingException msg_e) {
            msg_e.printStackTrace();
        } 

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
