package com.whpu.pojo;

import lombok.Data;

@Data
public class House {
    //House本身房源信息属性
    private Integer hid;
    private Double price;
    private Double areas;
    private String title;
    private String mark;
    private String equipment;
    private String address;
    private String imgs;
    private Integer user_id;
    private Integer district_id;
    private Integer type_id;

    //关联其它表Type Users District
    private Users users;//关联user_id
    private District district;//关联district_id
    private Type type;//关联type_id
}