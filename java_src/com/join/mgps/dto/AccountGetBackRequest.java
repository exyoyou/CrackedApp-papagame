package com.join.mgps.dto;

import com.join.mgps.activity.arena.GameRoomActivity_;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class AccountGetBackRequest {
    private String code;
    private String mobile;
    private String password;
    private String sign;

    public String getCode() {
        return this.code;
    }

    public String getMobile() {
        return this.mobile;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("mobile", this.mobile);
        linkedMultiValueMap.add(GameRoomActivity_.PASSWORD_EXTRA, this.password);
        linkedMultiValueMap.add("code", this.code + "");
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getPassword() {
        return this.password;
    }

    public String getSign() {
        return this.sign;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }
}
