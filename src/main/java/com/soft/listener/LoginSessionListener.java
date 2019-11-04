package com.soft.listener;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * 
* @ClassName: LoginSessionListener
* @Description: 监听登陆的session的存在
* @author ljy
* @date 2019年10月25日 下午9:57:10
*
 */
public class LoginSessionListener implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public LoginSessionListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    @Override
    public void sessionCreated(HttpSessionEvent arg0)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    @Override
    public void sessionDestroyed(HttpSessionEvent arg0)  { 
         HttpSession session = arg0.getSession();
         
         // 判断用户是否保持登陆状态
         if(session.getAttribute("student")==null && session.getAttribute("teacher")==null){
        	 //
         }
       
    }
	
}
