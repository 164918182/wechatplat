package com.fcs.menu.service.impl;

import com.fcs.common.Strings;
import com.fcs.menu.dao.MenuTreeMapper;
import com.fcs.menu.model.MenuTree;
import com.fcs.menu.service.MenuTreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * Created by Lucare on 2016/1/29.
 */
@Service("menuTreeService")
public class MenuTreeServiceImpl implements MenuTreeService {

    @Autowired
    private MenuTreeMapper menuTreeMapper;

    public List<MenuTree> tree() {
        List<MenuTree> relList = new ArrayList<MenuTree>();
        List<MenuTree> list = menuTreeMapper.buildMenuTree("0");
        List<MenuTree> childList = null;
        for (MenuTree menuTree:list){
            childList = buildTreeList(menuTree.getId());
            menuTree.setChildren(childList);
            relList.add(menuTree);
        }
        return relList;
    }

    /**
     *递归构建树形菜单结构
     */
    private List<MenuTree> buildTreeList(String parentId){
        List<MenuTree> innerList = new ArrayList<MenuTree>();
        String hql = "from MenuTree where enabled=0 and parentId=?";
        List<MenuTree> list = menuTreeMapper.buildMenuTree(parentId);//一级菜单列表
        Map<String,Object> map = null;
        for (MenuTree menuTree : list) {
            List<MenuTree> sercondlist = menuTreeMapper.buildMenuTree(menuTree.getId());//二级菜单
            if(sercondlist.size()>0){//递归构建树
                menuTree.setChildren(buildTreeList(menuTree.getId()));
            }else{
                map = new HashMap<String,Object>();
                map.put("url",menuTree.getUrl());
                menuTree.setAttributes(map);
            }
            innerList.add(menuTree);//添加一级菜单
        }
        return innerList;
    }

    public String saveMenu(MenuTree menuTree) {
        if(menuTree != null){
            Date date = new Date();
            menuTree.setId(Strings.getID());
            menuTree.setCreateTime(date);
            menuTree.setUpdateTime(date);
            menuTreeMapper.saveMenu(menuTree);
            return menuTree.getId();
        }
        return null;
    }

    public void delMenu(String menuTreeId) {
        menuTreeMapper.delMenu(menuTreeId);
    }

    public MenuTree searchOne(String menuId) {
        return null;
    }

    public void editMenu(MenuTree menuTree) {
        menuTree.setUpdateTime(new Date());
        menuTreeMapper.editMenu(menuTree);
    }
}