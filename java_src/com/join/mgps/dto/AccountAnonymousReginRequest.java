package com.join.mgps.dto;

import com.MApplication;
import com.czhj.sdk.common.Constants;
import com.join.mgps.activity.arena.GameRoomActivity_;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class AccountAnonymousReginRequest {
    private String code;
    private String device_id;
    private String mac;
    private String mobile;
    private String nick_name;
    private String password;
    private String sign;
    private String token;
    private int type;
    private int uid;
    private String unique_id = "";
    private String share_code = MApplication.f3174l1;

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

    public String getNick_name() {
        return this.nick_name;
    }

    public LinkedMultiValueMap<String, String> getParamsPhone() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(Constant.MD5, this.sign + "");
        linkedMultiValueMap.add("nick_name", this.nick_name + "");
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add(Constants.TOKEN, this.token + "");
        linkedMultiValueMap.add("mobile", this.mobile + "");
        linkedMultiValueMap.add(GameRoomActivity_.PASSWORD_EXTRA, this.password + "");
        linkedMultiValueMap.add("code", this.code + "");
        linkedMultiValueMap.add("unique_id", this.unique_id + "");
        linkedMultiValueMap.add("device_id", this.device_id + "");
        linkedMultiValueMap.add("mac", this.mac + "");
        linkedMultiValueMap.add("type", this.type + "");
        linkedMultiValueMap.add("share_code", this.share_code + "");
        return linkedMultiValueMap;
    }

    public LinkedMultiValueMap<String, String> getParamsThird() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(Constant.MD5, this.sign + "");
        linkedMultiValueMap.add("nick_name", this.nick_name + "");
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add(Constants.TOKEN, this.token + "");
        linkedMultiValueMap.add("unique_id", this.unique_id + "");
        linkedMultiValueMap.add("type", this.type + "");
        linkedMultiValueMap.add(GameRoomActivity_.PASSWORD_EXTRA, this.password + "");
        linkedMultiValueMap.add("mobile", this.mobile + "");
        linkedMultiValueMap.add("code", this.code + "");
        linkedMultiValueMap.add("device_id", this.device_id + "");
        linkedMultiValueMap.add("mac", this.mac + "");
        linkedMultiValueMap.add("share_code", this.share_code + "");
        return linkedMultiValueMap;
    }

    public String getPassword() {
        return this.password;
    }

    public String getShare_code() {
        return this.share_code;
    }

    public String getSign() {
        return this.sign;
    }

    public String getToken() {
        return this.token;
    }

    public int getType() {
        return this.type;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUnique_id() {
        return this.unique_id;
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

    public void setNick_name(String nick_name) {
        this.nick_name = nick_name;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setShare_code(String share_code) {
        this.share_code = share_code;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setUnique_id(String unique_id) {
        this.unique_id = unique_id;
    }
}
