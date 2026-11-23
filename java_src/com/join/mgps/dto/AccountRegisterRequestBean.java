package com.join.mgps.dto;

import com.join.mgps.activity.arena.GameRoomActivity_;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class AccountRegisterRequestBean {
    private String account;
    private String avatar_src;
    private int code;
    private String device_id;
    private int gender;
    private String mac;
    private String mobile;
    private String nick_name;
    private String password;
    private String sign;
    private int source;

    public AccountRegisterRequestBean() {
    }

    public String getAccount() {
        return this.account;
    }

    public String getAvatar_src() {
        return this.avatar_src;
    }

    public int getCode() {
        return this.code;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public int getGender() {
        return this.gender;
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

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("mobile", this.mobile);
        linkedMultiValueMap.add(GameRoomActivity_.PASSWORD_EXTRA, this.password);
        linkedMultiValueMap.add("code", this.code + "");
        linkedMultiValueMap.add("mac", this.mac);
        linkedMultiValueMap.add("device_id", this.device_id);
        linkedMultiValueMap.add("source", this.source + "");
        linkedMultiValueMap.add(GrantCredentialsPermissionActivity.f89265g, this.account + "");
        linkedMultiValueMap.add("nick_name", this.nick_name + "");
        linkedMultiValueMap.add("gender", this.gender + "");
        linkedMultiValueMap.add("avatar_src", this.avatar_src + "");
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getPassword() {
        return this.password;
    }

    public String getSign() {
        return this.sign;
    }

    public int getSource() {
        return this.source;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public void setAvatar_src(String avatar_src) {
        this.avatar_src = avatar_src;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setDevice_id(String device_id) {
        this.device_id = device_id;
    }

    public void setGender(int gender) {
        this.gender = gender;
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

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setSource(int source) {
        this.source = source;
    }

    public AccountRegisterRequestBean(String mobile, String password, int code, String mac, String device_id) {
        this.mobile = mobile;
        this.password = password;
        this.code = code;
        this.mac = mac;
        this.device_id = device_id;
    }
}
