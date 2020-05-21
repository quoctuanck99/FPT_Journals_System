package com.fpt.paper.web.service.user;

import com.fpt.paper.common.PagingResult;
import com.fpt.paper.model.admin.User;

import java.util.Optional;


public interface UserService {
    Optional<PagingResult> pageUser(String username, PagingResult page);
    Optional<Boolean> addUser(User item, String ipClient);
    Optional<User> get(Long id);
    Optional<Boolean> editUserFromView(User item, String ipClient);
    Optional<Boolean> deleteUser(Long id, String ipClient);
    Optional<User> getByUsername(String username);
    Optional<Integer> changeMyPass(String passwordCurrent, String passNew);
}
