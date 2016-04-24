package com.fcs.platform.controller;

import com.fcs.admin.model.MenuTree;
import com.fcs.admin.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Lucare.Feng on 2016/4/23.
 */
@Controller
public class IndexController extends BaseController{

    @Autowired
    private PermissionService permissionService;

    @RequestMapping("/index")//后台管理首页
    public String index(Model model){
        try {
            List<MenuTree> list = permissionService.selectMenuTreeByUserId("1");
            model.addAttribute("list", list);
            return "/index";
        } catch (Exception e) {
            logger.error(this.getClass().getName()+":index()", e);
            return "";
        }
    }
}
