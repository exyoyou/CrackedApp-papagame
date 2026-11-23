package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class AccountTokenTimeOutRequestBean {
    private String device_id;
    private String sign;
    private String toke;
    private int uid;

    public AccountTokenTimeOutRequestBean() {
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("toke", this.toke);
        linkedMultiValueMap.add("device_id", this.device_id);
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public int getUid() {
        return this.uid;
    }

    public void setDevice_id(String device_id) {
        this.device_id = device_id;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setToke(String toke) {
        this.toke = toke;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public AccountTokenTimeOutRequestBean(int uid, String toke, String device_id) {
        this.uid = uid;
        this.toke = toke;
        this.device_id = device_id;
    }
}
