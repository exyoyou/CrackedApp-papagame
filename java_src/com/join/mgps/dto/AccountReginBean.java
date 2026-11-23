package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class AccountReginBean implements Serializable {
    private String account;
    private String avatar_src;
    private int code;
    private String device_id;
    private int gender;
    private String mac;
    private String mobile;
    private String nickname;
    private String password;
    private int source;

    public AccountReginBean() {
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

    public String getNickname() {
        return this.nickname;
    }

    public String getPassword() {
        return this.password;
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

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setSource(int source) {
        this.source = source;
    }

    public AccountReginBean(String mobile, String password, int code, String mac, String device_id, int source, String account, String nickname, int gender, String avatar_src) {
        this.mobile = mobile;
        this.password = password;
        this.code = code;
        this.mac = mac;
        this.device_id = device_id;
        this.source = source;
        this.account = account;
        this.nickname = nickname;
        this.gender = gender;
        this.avatar_src = avatar_src;
    }
}
