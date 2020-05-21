package com.fpt.paper.web.service.group;

import org.springframework.transaction.annotation.Transactional;

import com.fpt.paper.common.PagingResult;
import com.fpt.paper.model.admin.Authority;
import com.fpt.paper.model.admin.Group;
import com.fpt.paper.model.admin.GroupUser;
import com.fpt.paper.model.admin.view.GroupView;

import java.util.List;
import java.util.Optional;


@Transactional
public interface GroupService {
    Optional<PagingResult> page(String name, PagingResult page);
    Optional<List<Group>> loadAllGroup();
    Optional<List<Group>> loadAllGroupOfUser(Long userId);
    Optional<GroupView> getGroupView(Integer id);
    Optional<List<Authority>> loadAllAuthority();
    Optional<Boolean> saveGroupView(GroupView item);
    Optional<Boolean> editGroupView(GroupView item);

    Optional<Boolean> addListGroupUser(List<GroupUser> items, Long userId);
    Optional<Boolean> deleteListGroupOfUser(Long userId);

    Optional<List<String>> loadListAuthorityOfUserByUsername(String username);
    Optional<Integer> deleteGroup(Integer id, String ip);
}
