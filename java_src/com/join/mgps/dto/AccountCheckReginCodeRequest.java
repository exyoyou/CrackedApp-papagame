package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class AccountCheckReginCodeRequest {
    private String code;
    private String device_id;
    private String mac;
    private String mobile;
    private String sign;

    public String getCode() {
        return this.code;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getMac() {
        return this.mac;
    }

    public String getMobile() {
        return this.mobile;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(Constant.MD5, this.sign + "");
        linkedMultiValueMap.add("device_id", this.device_id + "");
        linkedMultiValueMap.add("mac", this.mac + "");
        linkedMultiValueMap.add("mobile", this.mobile + "");
        linkedMultiValueMap.add("code", this.code + "");
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setDevice_id(String device_id) {
        this.device_id = device_id;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }
}
