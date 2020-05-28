package com.fpt.paper.security;
import com.fpt.paper.model.admin.User;


import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.session.SessionDestroyedEvent;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Component;

import javax.servlet.http.Cookie;


@Component
public class SessionEndedListener implements ApplicationListener<SessionDestroyedEvent> {

    private Logger logger= LogManager.getLogger(SessionEndedListener.class);

    @Override
    public void onApplicationEvent(SessionDestroyedEvent event)
    {
        for (SecurityContext securityContext : event.getSecurityContexts())
        {
            try{
                Authentication authentication = securityContext.getAuthentication();
                User user = (User) authentication.getPrincipal();
                WebAuthenticationDetails webAuthenticationDetails = (WebAuthenticationDetails) authentication.getDetails();
                String remoteIpAddress = webAuthenticationDetails.getRemoteAddress();

            }catch (Exception e){
                logger.error("Have an error when end session Timeout:"+e.getMessage());
            }

        }
    }
}
