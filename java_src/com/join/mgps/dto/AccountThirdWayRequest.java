package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class AccountThirdWayRequest {
    private String device_id;
    private String mac;
    private String sign;
    private int type;
    private String unique_id;

    public AccountThirdWayRequest() {
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getMac() {
        return this.mac;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("unique_id", this.unique_id);
        linkedMultiValueMap.add("type", this.type + "");
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        linkedMultiValueMap.add("mac", this.mac);
        linkedMultiValueMap.add("device_id", this.device_id);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public int getType() {
        return this.type;
    }

    public void setDevice_id(String device_id) {
        this.device_id = device_id;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setType(int type) {
        this.type = type;
    }

    public AccountThirdWayRequest(String unique_id, int type, String sign) {
        this.unique_id = unique_id;
        this.type = type;
        this.sign = sign;
    }
}
