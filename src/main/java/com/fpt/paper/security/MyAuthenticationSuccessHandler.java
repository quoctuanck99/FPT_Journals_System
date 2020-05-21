

package com.fpt.paper.security;

import com.fpt.paper.common.ConstantAuthor;
import com.fpt.paper.common.Utils;
import com.fpt.paper.model.admin.User;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MyAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        try{
            User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            httpServletRequest.getSession().setAttribute("userId",user.getId());
            String ip= Utils.getIpClient(httpServletRequest);
            httpServletRequest.getSession().setAttribute("ipClient",ip);

        }catch (Exception e){

        }
        httpServletResponse.setStatus(HttpServletResponse.SC_OK);
        String urlRedirect=httpServletRequest.getContextPath()+"/admin/";
        httpServletResponse.sendRedirect(urlRedirect);
    }
}

