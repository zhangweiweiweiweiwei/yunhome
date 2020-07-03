package com.whpu.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import javax.sql.DataSource;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

//    @Override//重写认证方法
//    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        //1.构建密码加密器
//        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//        //2.自定义两个用户信息（曹操，666，房东/大乔,123,租客）
//        auth.inMemoryAuthentication().
//                passwordEncoder(encoder).//密码加密
//                withUser("曹操").
//                password(encoder.encode("666")).
//                roles("房东").
//                and().//添加第二个用户
//                withUser("大乔").
//                password(encoder.encode("123")).
//                roles("租客");
//    }

    @Autowired//注入dataSource
    private DataSource dataSource;

    @Override//重写认证方法
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String p666 = encoder.encode("666");
        String p123 = encoder.encode("123");
        System.out.println(p666);
        System.out.println(p123);

        //连接jdbc认证用户信息
        auth.jdbcAuthentication().passwordEncoder(encoder).
                dataSource(dataSource).
                //根据用户名查询用户信息
                usersByUsernameQuery("select name ,psw ,1 from h_users where name=?")
                //根据用户名查询用户权限
                .authoritiesByUsernameQuery("select name  ,role  from h_users where name=?");

    }

//    1.方法usersByUsernameQuery(sql)
//    根据用户名去验证密码；默认查询语句为：
//    select username,password,enabled from users where username = ?
//    默认查询三个字段：用户名，密码，是否可用：1 为可用，0为不可用。
//            2.方法authoritiesByUsernameQuery(sql)
//    根据用户名查询权限,默认sql为：
//    select username,authority from authorities where username = ?
//    默认查询两个字段：用户名，权限


/*    @Override //页面访问权限控制
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests() //对请求权限管理
                .antMatchers("/").permitAll()
                .antMatchers("/house/**","/users/**","/admin","/index").hasAuthority("房东")
                .antMatchers("/index").hasAuthority("租客")
                .anyRequest().authenticated()
                .and().formLogin();
    }*/
}