package iform.tools;

import java.util.Arrays;
import java.util.Properties;

public class MailInfo {  
  private String mailServerHost;// 服务器ip  
  private String mailServerPort;// 端口  
  private String fromAddress;// 发送者的邮件地址  
  private String[] toAddress;// 邮件接收者地址  
  private String[] ccAddress;
  private String username;// 登录邮件发送服务器的用户名  
  private String password;// 登录邮件发送服务器的密码  
  private boolean validate = false;// 是否需要身份验证  
  private String subject;// 邮件主题  
  private String content;// 邮件内容  
  private String[] attachFileNames;// 附件名称  
    
  public Properties getProperties() {  
      Properties p = new Properties();  
      p.put("mail.smtp.host", this.mailServerHost);  
      p.put("mail.smtp.port", this.mailServerPort);  
      p.put("mail.smtp.auth", validate ? "true" : "false");  
      return p;  
  }  

  public String getMailServerHost() {  
      return mailServerHost;  
  }  

  public void setMailServerHost(String mailServerHost) {  
      this.mailServerHost = mailServerHost;  
  }  

  public String getMailServerPort() {  
      return mailServerPort;  
  }  

  public void setMailServerPort(String mailServerPort) {  
      this.mailServerPort = mailServerPort;  
  }  

  public String getFromAddress() {  
      return fromAddress;  
  }  

  public void setFromAddress(String fromAddress) {  
      this.fromAddress = fromAddress;  
  }  

  public String[] getToAddress() {  
      return toAddress;  
  }  

  public void setToAddress(String[] toAddress) {  
      this.toAddress = toAddress;  
  }  

  public String getUsername() {  
      return username;  
  }  

  public void setUsername(String username) {  
      this.username = username;  
  }  

  public String getPassword() {  
      return password;  
  }  

  public void setPassword(String password) {  
      this.password = password;  
  }  

  public boolean isValidate() {  
      return validate;  
  }  

  public void setValidate(boolean validate) {  
      this.validate = validate;  
  }  

  public String getSubject() {  
      return subject;  
  }  

  public void setSubject(String subject) {  
      this.subject = subject;  
  }  

  public String getContent() {  
      return content;  
  }  

  public void setContent(String content) {  
      this.content = content;  
  }  

  public String[] getAttachFileNames() {  
      return attachFileNames;  
  }  

  public void setAttachFileNames(String[] attachFileNames) {  
      this.attachFileNames = attachFileNames;  
  }

/**
 * @return the ccAddress
 */
public String[] getCcAddress() {
	return ccAddress;
}

@Override
public String toString() {
	return "MailInfo [mailServerHost=" + mailServerHost + ", mailServerPort=" + mailServerPort + ", fromAddress="
			+ fromAddress + ", toAddress=" + Arrays.toString(toAddress) + ", ccAddress=" + Arrays.toString(ccAddress)
			+ ", username=" + username + ", password=" + password + ", validate=" + validate + ", subject=" + subject
			+ ", content=" + content + ", attachFileNames=" + Arrays.toString(attachFileNames) + "]";
}

/**
 * @param ccAddress the ccAddress to set
 */
public void setCcAddress(String[] ccAddress) {
	this.ccAddress = ccAddress;
}  

}  