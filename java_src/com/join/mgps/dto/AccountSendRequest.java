package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class AccountSendRequest {
    private String mobile;
    private String sign;
    private int source = 2;
    private int uid = 0;

    public String getMobile() {
        return this.mobile;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(Constant.MD5, this.sign + "");
        linkedMultiValueMap.add("source", this.source + "");
        linkedMultiValueMap.add("mobile", this.mobile + "");
        linkedMultiValueMap.add("uid", this.uid + "");
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public int getSource() {
        return this.source;
    }

    public int getUid() {
        return this.uid;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setSource(int source) {
        this.source = source;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
