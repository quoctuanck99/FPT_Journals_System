package com.fpt.paper.web.service.user;


import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fpt.paper.common.PagingResult;
import com.fpt.paper.model.admin.User;
import com.fpt.paper.web.dao.user.UserDao;

import java.util.Date;
import java.util.Optional;


@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;
    
    @Autowired
    BCryptPasswordEncoder encoder;
    @Override
    public Optional<PagingResult> pageUser(String username, PagingResult page) {
        return userDao.pageUser(username,page);
    }

    @Override
    @Transactional
    public Optional<Boolean> addUser(User item, String ipClient) {
        item.setStatus(1);
        item.setGenDate(new Date());
        item.setLastUpdated(new Date());
        item.setPassword(encoder.encode(item.getPassword()));
        //insert log

        return userDao.addUser(item);
    }

    @Override
    public Optional<User> get(Long id) {
        return userDao.get(id);
    }

    @Override
    @Transactional
    public Optional<Boolean> editUserFromView(User item,String ipClient) {
        User itemDB=userDao.get(item.getId()).orElse(null);
        if(itemDB!=null){
            itemDB.setFullName(item.getFullName());
            itemDB.setDescription(item.getDescription());
            itemDB.setStatus(item.getStatus());
            if(!StringUtils.isBlank(item.getPassword())){
                itemDB.setPassword(encoder.encode(item.getPassword()));
            }
            item.setLastUpdated(new Date());
            //insert log

            return userDao.editUser(itemDB);
        }else{
            return Optional.ofNullable(false);
        }

    }

    @Override
    public Optional<Boolean> deleteUser(Long id,String ipClient) {

        return userDao.deleteUser(id);
    }

    @Override
    public Optional<User> getByUsername(String username) {
        return userDao.getByUsername(username);
    }

    @Override
    @Transactional
    public Optional<Integer> changeMyPass(String passwordCurrent,String passNew) {
        User user=(User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        PasswordEncoder passwordEnocder = new BCryptPasswordEncoder();
        if(!passwordEnocder.matches(passwordCurrent,user.getPassword())){
            return Optional.of(2);
        }
        passNew=encoder.encode(passNew);
        user.setPassword(passNew);
        userDao.changeMyPass(passNew,user.getId());
        return Optional.of(1);
    }
}
