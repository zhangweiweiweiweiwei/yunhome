package com.whpu.mapper;


import com.whpu.pojo.Users;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface UsersMapper {
    //selectAll
    @Select("select * from h_users")
    List<Users> selectAll();
}