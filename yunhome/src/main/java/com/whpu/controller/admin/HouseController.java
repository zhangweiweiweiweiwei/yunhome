package com.whpu.controller.admin;



import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.whpu.mapper.DistrictMapper;
import com.whpu.mapper.HouseMapper;
import com.whpu.mapper.TypeMapper;
import com.whpu.mapper.UsersMapper;
import com.whpu.pojo.District;
import com.whpu.pojo.House;
import com.whpu.pojo.Type;
import com.whpu.pojo.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/house")
public class HouseController {

    @Autowired
    private HouseMapper houseMapper;
    @Autowired
    private UsersMapper usersMapper;
    @Autowired
    private TypeMapper typeMapper;
    @Autowired
    private DistrictMapper districtMapper;


    @RequestMapping("/streets")
    @ResponseBody
    public List<District> streets(Integer did){
        //根据区域id查询对应的街道信息
        return districtMapper.getDisByParentId(did);
    }

    @RequestMapping("/show")
    public String show(Model model,
                       @RequestParam(defaultValue = "1") Integer pageNo,
                       @RequestParam(defaultValue = "3") Integer pageSize){
        //1.分页
        PageHelper.startPage(pageNo,pageSize);
        //2.查询
        List<House> houses = houseMapper.selectAll();
        System.out.println(houses);
        //3.封装pageInfo
        PageInfo<House> houseInfo = (PageInfo<House>) new PageInfo<>(houses);
        //4.存model
        model.addAttribute("houseInfo",houseInfo);
        //5.跳转showHouse.html
        return "admin/house/show_house";
    }


    //新增房源：1.跳转到新增页面 2.执行房源数据新增
    @RequestMapping("/addPage")
    public String addHousePage(Model model){
        //查询出所有的用户信息
        List<Users> users = usersMapper.selectAll();
        //2.查询出所有的类型信息
        List<Type> types = typeMapper.selectAll();
        //3.查询出所有的区域信息:城区 (和 街道)
        List<District> districts = districtMapper.getDisByParentId(1);
        //4.上述集合存入model
        model.addAttribute("users",users);
        model.addAttribute("types",types);
        model.addAttribute("districts",districts);
        System.out.println(districts);
        //5.跳转到新增页面
        return "admin/house/add_house";
    }


    @RequestMapping("/add")
    //添加房源信息到数据库
    //定义add（）方法将House对象里的属性添加到h_house表中
    //形参House，表示可以一次性接收整个form中的所有属性值，并封装到house对象中
    public String add(House house){
        houseMapper.addHouse(house);
        return "admin/admin";
    }

}
