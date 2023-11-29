package com.xhobbe.utils;

import com.xhobbe.constant.ActionConstant;
import java.util.Date;
import javax.mail.Session;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import java.util.Properties;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Lmao
 */
public class SendEmailUtils {

    public static void sendEmail(String to, String title, String content, String type) {

        //properties : Khai báo thuộc tính
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com"); //smtp host
        props.put("mail.smtp.port", "587"); // TSL 587, SSL 465
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        ResourceBundle resourceBundle = ResourceBundle.getBundle("email");
        final String from = resourceBundle.getString("email");
        final String password = resourceBundle.getString("password");

        Session session = Session.getInstance(props, new Authenticator() {

            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password);
            }

        });

        String textMessage;

        switch (type) {
            case ActionConstant.ACTIVATE:
                textMessage = activeMessage(to, content);
                break;
            case ActionConstant.GETOTP:
                textMessage = getOTPMessage(content);
                break;
            default:
                throw new AssertionError();
        }

        new Thread(() -> {
            try {
                Message message = prepareMessage(session, from, to, title, textMessage);
                Transport.send(message);
                System.out.println("Send email success!");
            } catch (MessagingException ex) {
                System.out.println("Send email fail!");
                Logger.getLogger(SendEmailUtils.class.getName()).log(Level.SEVERE, null, ex);
            }
        }).start();
    }

    private static Message prepareMessage(Session session, String from, String recipient, String title, String textMessage) {

        try {
            Message message = new MimeMessage(session);
            message.addHeader("Content-type", "text/HTML; charset = UTF-8");
            message.setFrom(new InternetAddress(from));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipient, false));
            message.setReplyTo(InternetAddress.parse(from, false));
            message.setSubject(title);
            message.setSentDate(new Date());
            message.setContent(textMessage, "text/html");
            return message;

        } catch (MessagingException exception) {
            Logger.getLogger(SendEmailUtils.class.getName()).log(Level.SEVERE, null, exception);
        }
        return null;

    }

    private static String activeMessage(String to, String content) {
        String activationLink = "http://localhost:8080/XHobbeWebApp/login?action=active&email=" + to + "&token=" + content;
        return "<!DOCTYPE html>\n"
                + "<html lang=\"en\">\n"
                + "<head>\n"
                + "    <meta charset=\"UTF-8\">\n"
                + "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                + "    <title>Active</title>\n"
                + "</head>\n"
                + "<body style=\"margin-bottom: 10px;\">\n"
                + "<img src=\"https://firebasestorage.googleapis.com/v0/b/xhobbe-98105.appspot.com/o/logo%2Fxhobbe-high-resolution-logo.png?alt=media&token=61a3c357-6d99-4565-bdeb-76e4d0aedbdd\" style=\"width: 250px;\">\n"
                + "    <h3>Wellcome to xHobbe</h3>\n"
                + "    <p>Click the active button to activate your account now!</p>\n"
                + "    <p>Here: " + activationLink + " </p>\n"
                + "    <p>Thank you for signing up!</p>\n"
                + "</body>\n"
                + "</html>";

    }

    private static String getOTPMessage(String otp) {
        return "<!DOCTYPE html>\n"
                + "<html lang=\"en\">\n"
                + "<head>\n"
                + "    <meta charset=\"UTF-8\">\n"
                + "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                + "    <title>Get OTP</title>\n"
                + "</head>\n"
                + "<body style=\"margin-bottom: 10px;\">\n"
                + "    <img src=\"https://firebasestorage.googleapis.com/v0/b/xhobbe-98105.appspot.com/o/logo%2Fxhobbe-high-resolution-logo.png?alt=media&token=61a3c357-6d99-4565-bdeb-76e4d0aedbdd\" style=\"width: 250px;\">\n"
                + "    <h3>Welcome to xHobbe</h3>\n"
                + "    <p>Your OTP to change account password is: " + otp + "</p>\n"
                + "    <p>Please usse this OTP to change your old password.</p>\n"
                + "</body>\n"
                + "</html>";
    }

    public static void main(String[] args) {
        sendEmail("huytde.dev@gmail.com", "Verify email", "token-here", ActionConstant.ACTIVATE);
    }
}
