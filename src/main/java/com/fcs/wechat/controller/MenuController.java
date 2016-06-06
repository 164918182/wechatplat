package com.fcs.wechat.controller;

import com.fcs.platform.controller.BaseController;
import com.fcs.wechat.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Lucare.Feng on 2016/6/6.
 * 菜单管理
 */
@Controller
@RequestMapping("/wemenu")
public class MenuController extends BaseController{

    @Autowired
    private MenuService menuService;

    @RequestMapping("/index")
    public String index(){
        try {

            String res = menuService.getConfig(getAccess_token());
            System.out.println(res);
            return "/menu/menu_config";
        } catch (Exception e) {
            logger.error(this.getClass().getName() + ":index()", e);
            return "";
        }
    }
}
