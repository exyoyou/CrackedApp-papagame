package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class MMSRequesBean {
    public static int TYPE_BIND = 8;
    public static int TYPE_FORGOT = 2;
    public static int TYPE_REGISTER = 1;
    private String mobile;
    private String sign;
    private int type;

    public MMSRequesBean() {
    }

    public String getMobile() {
        return this.mobile;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("mobile", this.mobile);
        linkedMultiValueMap.add("type", this.type + "");
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public int getType() {
        return this.type;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setType(int type) {
        this.type = type;
    }

    public MMSRequesBean(String mobile, int type, String sign) {
        this.mobile = mobile;
        this.type = type;
        this.sign = sign;
    }
}
