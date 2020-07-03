package com.whpu.controller.admin;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.whpu.mapper.UsersMapper;
import com.whpu.pojo.Users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/users")
public class UsersController {

    @Autowired
    private UsersMapper usersMapper;


    @RequestMapping("/show")
    public String show(Model model,
                       @RequestParam(defaultValue = "1") Integer pageNo,
                       @RequestParam(defaultValue = "3") Integer pageSize){

        //1.分页查询
        PageHelper.startPage(pageNo,pageSize);
        //通用mapper查询所有数据
        List<Users> users = usersMapper.selectAll();
        PageInfo<Users> pageInfo = new PageInfo<>(users);

        System.out.println(pageInfo);


        //2.存进model
        model.addAttribute("pageInfo",pageInfo);
        //3.跳转到users下的show页面
        return "admin/users/show_users";
    }
}
