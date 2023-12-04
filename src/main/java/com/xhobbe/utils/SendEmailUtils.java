package com.xhobbe.utils;

import com.xhobbe.dao.impl.OrderDAO;
import com.xhobbe.dao.impl.OrderDetailDAO;
import com.xhobbe.model.Order;
import com.xhobbe.model.OrderDetail;
import java.util.Date;
import java.util.List;
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

    private static void sendEmail(String to, String title, String textMessage) {

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

    public static Message prepareMessage(Session session, String from, String recipient, String title, String textMessage) {

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

    public static void sendActiveMessage(String to, String title, String content) {
        String activationLink = "http://localhost:8080/XHobbeWebApp/login?action=active&email=" + to + "&token=" + content;
        String message = "<!DOCTYPE html>\n"
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
        sendEmail(to, title, message);
    }

    public static void sendGetOTPMessage(String to, String title, String otp) {
        String message = "<!DOCTYPE html>\n"
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
        sendEmail(to, title, message);
    }

    public static void sendOrderMessage(String to, String title, Order order, List<OrderDetail> orderDetails) {

        String message = "<!DOCTYPE html>\n"
                + "<html lang=\"en\">\n"
                + "<head>\n"
                + "    <meta charset=\"UTF-8\">\n"
                + "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                + "    <title>Order Message</title>\n"
                + "    <style>\n"
                + "        .table-cart {\n"
                + "            width: 100%;\n"
                + "            border-collapse: collapse;\n"
                + "        }\n"
                + "\n"
                + "        .table-cart th, .table-cart td {\n"
                + "            text-align: center;\n"
                + "            padding: 8px;\n"
                + "            border: 1px solid #ddd;\n"
                + "            min-width: 120px;\n"
                + "        }\n"
                + "\n"
                + "        .order-detail-field {\n"
                + "            margin: 0;\n"
                + "        }\n"
                + "    </style>\n"
                + "</head>\n"
                + "<body>\n"
                + "    <p>You have placed your order successfully.</p>\n"
                + "    <p>Here are your order details: </p>\n"
                + "    <table class=\"table-cart\">\n"
                + "        <thead>\n"
                + "            <tr>\n"
                + "                <th>\n"
                + "                    <h5>Product</h5>\n"
                + "                </th>\n"
                + "                <th>\n"
                + "                    <h5>Quantity</h5>\n"
                + "                </th>\n"
                + "                <th>\n"
                + "                    <h5>Price Order</h5>\n"
                + "                </th>\n"
                + "                <th>\n"
                + "                    <h5>Total</h5>\n"
                + "                </th>\n"
                + "            </tr>\n"
                + "        </thead>\n"
                + "        <tbody>";
        for (OrderDetail orderDetail : orderDetails) {
            message += "<tr>\n"
                    + "                <td>\n"
                    + "                    <p class=\"order-detail-field\">" + orderDetail.getProductName() + "</p>\n"
                    + "                </td>\n"
                    + "                <td>\n"
                    + "                    <p class=\"order-detail-field\">" + orderDetail.getQuantity() + "</p> \n"
                    + "                </td>\n"
                    + "                <td>\n"
                    + "                    <p class=\"order-detail-field\">" + orderDetail.getPriceOrder() + "$</p> \n"
                    + "                </td>\n"
                    + "                <td>\n"
                    + "                    <p class=\"order-detail-field\">" + orderDetail.getTotal() + "$</p> \n"
                    + "                </td>\n"
                    + "            </tr>";
        }
        message += "</tbody>\n"
                + "    </table>\n"
                + "    <p>Your order total is: " + order.getTotal()+ "$</p>\n"
                + "    <p>Your delivery address is: " + order.getAddress() + "</p>\n"
                + "    <p>Time Order: " + order.getOrderDate() + "</p>\n"
                + "</body>\n"
                + "</html>";
        sendEmail(to, title, message);
    }

    public static void main(String[] args) {
//        sendEmail("huytde.dev@gmail.com", "Verify email", "token-here");
        
        Order order = new OrderDAO().findOne(1);
        List<OrderDetail> orderDetails = new OrderDetailDAO().findByOrderId(1);
        
        sendOrderMessage("htn10a2@gmail.com", "Oder detail", order, orderDetails);
        
        
    }
}
