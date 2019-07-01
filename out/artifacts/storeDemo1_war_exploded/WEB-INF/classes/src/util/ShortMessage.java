package util;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

import java.io.IOException;

/*
  此功能基于SMS短信网建平台，
  需要到官网注册相应的账号才能用
 */
public class ShortMessage {
    private String tophone;   // 设置发送的手机号码
    private String message;  //设置短信内容


    public String getTophone() {
        return tophone;
    }

    public void setTophone(String tophone) {
        this.tophone = tophone;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    public void sendMessage(){
        HttpClient client = new HttpClient();
        PostMethod post = new PostMethod("http://gbk.sms.webchinese.cn");
        post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=GBK");
        NameValuePair[] data = {
                new NameValuePair("Uid","dawmwoo"),
                new NameValuePair("key","d41d8cd98f00b204e980"),
                new NameValuePair("smsMob",tophone),
                new NameValuePair("smsText",message),
        };
        post.setRequestBody(data);
        try {
            client.executeMethod(post);
            Header[] headers = post.getRequestHeaders();
            int statusCode = post.getStatusCode();
            post.releaseConnection();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
