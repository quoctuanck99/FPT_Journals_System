package com.fpt_journals.dao;

import com.fpt_journals.common.PagingResult;
import com.fpt_journals.entity.User;

import java.util.List;
import java.util.Optional;

public interface UserDAO {
Optional<PagingResult> page(PagingResult page, String username , Integer roles,Integer status);
public List<User> danhsachacc();
public void add(User u);
public void delete(User u);


}
