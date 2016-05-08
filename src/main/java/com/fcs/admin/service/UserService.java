package com.fcs.admin.service;

import com.fcs.admin.model.UserInfo;
import com.fcs.admin.model.UserRole;

import java.util.List;

/**
 * Created by Lucare.Feng on 2016/1/24.
 */
public interface UserService {

    UserInfo getUserById(String id);

    List<UserInfo> getUsers();

    int insert(UserInfo userInfo);

    int update(UserInfo userInfo);

    int delete(String id);

    UserInfo login(UserInfo userInfo);

    int addAdminRole(UserRole userRole);

}
