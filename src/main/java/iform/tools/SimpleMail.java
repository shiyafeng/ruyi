package iform.tools;
import java.io.File;  
import java.util.Date;  
import java.util.Properties;  
  
import javax.activation.DataHandler;  
import javax.activation.FileDataSource;  
import javax.mail.Address;  
import javax.mail.Message;  
import javax.mail.Multipart;  
import javax.mail.Session;  
import javax.mail.Transport;  
import javax.mail.internet.InternetAddress;  
import javax.mail.internet.MimeBodyPart;  
import javax.mail.internet.MimeMessage;  
import javax.mail.internet.MimeMultipart;  
public class SimpleMail {  
	  
	
    public static boolean sendHtmlMail(MailInfo mailInfo) {       
        MyAuthenticator authenticator = null;  
        Properties properties = mailInfo.getProperties();  
        if (mailInfo.isValidate()) {  
            authenticator = new MyAuthenticator(mailInfo.getUsername(), mailInfo.getPassword());  
        }   
        
        Session sendMailSession = Session.getInstance(properties, authenticator);  
       
        try{  
            Message mailMessage = new MimeMessage(sendMailSession);   
            Address from = new InternetAddress(mailInfo.getFromAddress()); 
            mailMessage.setFrom(from);  
            Address[] to = new InternetAddress[mailInfo.getToAddress().length];//创建邮件的接收者地址  
            for(int i=0;i<mailInfo.getToAddress().length;i++){
            	to[i]=new InternetAddress(mailInfo.getToAddress()[i]);
            } 
            mailMessage.setRecipients(Message.RecipientType.TO, to);//设置邮件消息的接收者  
            Address[] cc = new InternetAddress[mailInfo.getCcAddress().length];
            for(int i=0;i<mailInfo.getCcAddress().length;i++){
            	cc[i]=new InternetAddress(mailInfo.getCcAddress()[i]);
            }
            mailMessage.setRecipients(Message.RecipientType.CC, to);   
            mailMessage.setSubject(mailInfo.getSubject()); 
            mailMessage.setSentDate(new Date()); 
            //MimeMultipart类是一个容器类，包含MimeBodyPart类型的对象  
            Multipart mainPart = new MimeMultipart();  
            MimeBodyPart messageBodyPart = new MimeBodyPart();//创建一个包含HTML内容的MimeBodyPart  
           
            messageBodyPart.setContent(mailInfo.getContent(),"text/html; charset=utf-8");  
            mainPart.addBodyPart(messageBodyPart);   
            mailMessage.setContent(mainPart);  
            Transport.send(mailMessage); 
           
            return true;  
        }catch (Exception e) {  
            e.printStackTrace();  
        }  
        return false;  
    }  
  
}  