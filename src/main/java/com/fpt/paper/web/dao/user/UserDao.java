package com.fpt.paper.web.dao.user;


import java.util.Optional;

import com.fpt.paper.common.PagingResult;
import com.fpt.paper.model.admin.User;


public interface UserDao {
    Optional<PagingResult> pageUser(String username, PagingResult page);
    Optional<Boolean> addUser(User item);
    Optional<User> get(Long id);
    Optional<Boolean> editUser(User item);
    Optional<Boolean> deleteUser(Long id);
    Optional<User> getByUsername(String username);
    Optional<Boolean> changeMyPass(String passNew, Long id);
}
