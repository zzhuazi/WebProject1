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
     * @return ������֤��
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
     * @param authCodeҪ���͵���֤��
     * @param toEmail���յ�����
     * @throws MessagingException
     */
    public static boolean sendAuthCode(String authCode, String toEmail) {
        //���÷����û�����SMTP
        String SEND_UNAME = "15521306571";
        String VALUE_SMTP = "smtp.163.com";
        //����SMTP�˿ںţ������˵����������
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
            msg.setSubject("��֤��");
            //��ȡ��֤��    
            msg.setText(authCode);
            msg.setSentDate(new Date());
            Transport transport = session.getTransport("smtp");
            // smtp��֤���������������ʼ��������û�������

            transport.connect(VALUE_SMTP, SEND_UNAME);
            // ����
            Transport.send(msg);
            transport.close();
            System.out.println("���ͳɹ�");
            return true;
        } catch (MessagingException ex) {
            System.out.println("����ʧ��");
        }
        return false;
    }

	
	public static void main(String[] args) {
		EmailUtil.sendAuthCode("123456", "1242440175@qq.com");

	}
}
