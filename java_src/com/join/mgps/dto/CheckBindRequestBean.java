package com.join.mgps.dto;

import com.czhj.sdk.common.Constants;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class CheckBindRequestBean {
    private String code;
    private String mobile;
    private String token;
    private int uid;

    public CheckBindRequestBean() {
    }

    public String getCode() {
        return this.code;
    }

    public String getMobile() {
        return this.mobile;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(Constants.TOKEN, this.token);
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("mobile", this.mobile);
        linkedMultiValueMap.add("code", this.code);
        return linkedMultiValueMap;
    }

    public LinkedMultiValueMap<String, String> getParamsv2() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("code", this.code);
        return linkedMultiValueMap;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public CheckBindRequestBean(String token, int uid, String mobile, String code) {
        this.token = token;
        this.uid = uid;
        this.mobile = mobile;
        this.code = code;
    }
}
