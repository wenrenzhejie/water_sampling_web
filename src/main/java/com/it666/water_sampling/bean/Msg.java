package com.it666.water_sampling.bean;

import sun.security.provider.MD2;

import java.util.HashMap;
import java.util.Map;

public class Msg {
    private int code;
    private String msg;
    private Map<String,Object> data = new HashMap<>();

    public static Msg success(){
        Msg msg = new Msg();
        msg.setCode(200);
        msg.setMsg("处理成功啦");
        return msg;
    }
    public static Msg fail(){
        Msg msg = new Msg();
        msg.setCode(500);
        msg.setMsg("处理失败啦");
        return msg;
    }
    public Msg add(String key,Object value){
        this.data.put(key,value);
        return this;
    }
    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Map<String, Object> getData() {
        return data;
    }

    public void setData(Map<String, Object> data) {
        this.data = data;
    }
}
