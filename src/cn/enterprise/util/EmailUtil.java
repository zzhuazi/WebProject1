package cn.enterprise.util;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class EmailUtil {
	/**
     * 
     * @return 返回验证码
     */
    public static int getAuthCode(){
        double random = Math.random();
        int authCode = 0;
        if (random * 10000 < 1000){
            authCode = (int)(random * 100000);
        }else{
            authCode = (int)(random * 10000);
        }
        return  authCode;
    }
    
    private static String username = "15521306571";
    private static String password = "15521306571q";
    /**
     *
     * @param authCode要发送的验证码
     * @param toEmail接收的邮箱
     * @throws MessagingException
     */
    public static boolean sendAuthCode(String authCode, String toEmail) {
        //设置发送用户名，SMTP
        String SEND_UNAME = "15521306571";
        String VALUE_SMTP = "smtp.163.com";
        //设置SMTP端口号，发送人的邮箱和密码
        Properties props = System.getProperties();
        props.setProperty("mail.smtp.host", "smtp.163.com");
        props.setProperty("mail.smtp.port", "25");
        props.put("mail.smtp.auth", "true");


        Session session = Session.getDefaultInstance(props,
                new Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        // -- Create a new message --
        //session.setDebug(true);
        Message msg = new MimeMessage(session);

        try {
            // -- Set the FROM and TO fields --
            msg.setFrom(new InternetAddress(username + "@163.com"));

            // msg.setFrom(new InternetAddress(username + "@qq.com"));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(
                    toEmail, false));
            msg.setSubject("验证码");
            //获取验证码    
            msg.setText(authCode);
            msg.setSentDate(new Date());
            Transport transport = session.getTransport("smtp");
            // smtp验证，就是你用来发邮件的邮箱用户名密码

            transport.connect(VALUE_SMTP, SEND_UNAME);
            // 发送
            Transport.send(msg);
            transport.close();
            System.out.println("发送成功");
            return true;
        } catch (MessagingException ex) {
            System.out.println("发送失败");
        }
        return false;
    }

	
	public static void main(String[] args) {
		EmailUtil.sendAuthCode("123456", "1242440175@qq.com");

	}
}
