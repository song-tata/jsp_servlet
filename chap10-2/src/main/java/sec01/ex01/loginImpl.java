package sec01.ex01;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class loginImpl
 *
 */
@WebListener
public class loginImpl implements HttpSessionListener {
	String u_id;
	String u_pw;
	static int total_user=0;
	
    public loginImpl() {
    }
    public loginImpl(String u_id,String u_pw) {
    	this.u_id = u_id;
    	this.u_pw = u_pw;
    }

    public void sessionCreated(HttpSessionEvent se)  { 
    	System.out.println("세션 생성");
    	++total_user;
    }

    public void sessionDestroyed(HttpSessionEvent se)  { 
    	System.out.println("세션 소멸");
    	total_user--;
    }
	
}
