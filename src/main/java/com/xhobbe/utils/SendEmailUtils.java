/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.xhobbe.utils;

import java.util.Date;
import javax.mail.Session;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.activation.DataHandler;
import javax.activation.DataSource;

/**
 *
 * @author Lmao
 */
public class SendEmailUtils {

    //Email: ShopxHobbe@gmail.com
    //Password: hgeafdbwiegimbwt
    static final String from = "xhobbeshop@gmail.com";
    static final String password = "wtdbhhjlerltvkuq";

    public static void sendEmail(String to, String title, String content) {
        //properties : Khai báo thuộc tính
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com"); //smtp host
        props.put("mail.smtp.port", "587"); // TSL 587, SSL 465
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        //Create Authenticator
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password);
            }
        };

        //Session
        Session session = Session.getInstance(props, auth);

        //Send email 
        //Create new message
        MimeMessage message = new MimeMessage(session);

        try {
            //kiểu nội dung
            message.addHeader("Content-type", "text/HTML; charset = UTF-8");

            //Người gửi
            message.setFrom(from);

            //Người nhận
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));

            //tiêu đề email
            message.setSubject(title);

            //Ngày gửi
            message.setSentDate(new Date());
            //Quy định email nhận phản hồi
//            message.setReplyTo(InternetAddress.parse(from, false));

            //Nội dung
            message.setContent("<!DOCTYPE html>\n"
                    + "<html lang=\"en\">\n"
                    + "<head>\n"
                    + "    <meta charset=\"UTF-8\">\n"
                    + "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                    + "    <title>Document</title>\n"
                    + "</head>\n"
                    + "<body>\n"
                    + "    <h4>Verify successfuly</h4>\n"
                    + "    <p>Link to login here: </p>\n"
                    + "    <button style=\"height: 40px; width: 100px; background-color: rgb(104, 104, 245); border: 2px solid black; border-radius: 10px;\">\n"
                    + "        <a href=\"#\" style=\"text-decoration: none; color: white;\">LOGIN</a>\n"
                    + "    </button>\n"
                    + "</body>\n"
                    + "</html>", "text/html");

            //Gửi email
            Transport.send(message);
            System.out.println("Send email success!");

        } catch (Exception e) {
            System.out.println("Send email fail!");
            e.printStackTrace();
        }
    }

//    public static void main(String[] args) {
//        sendEmail("htn10a2@gmail.com", "Verify email", "");
//    }
}
