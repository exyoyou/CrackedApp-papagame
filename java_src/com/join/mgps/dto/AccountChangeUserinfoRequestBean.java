package com.join.mgps.dto;

import com.czhj.sdk.common.Constants;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class AccountChangeUserinfoRequestBean {
    private String account;
    private String avatar_src;
    private int gender;
    private String nick_name;
    private String sign;
    private String token;
    private int uid;

    public String getAccount() {
        return this.account;
    }

    public String getAvatar_src() {
        return this.avatar_src;
    }

    public int getGender() {
        return this.gender;
    }

    public String getNick_name() {
        return this.nick_name;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add(Constants.TOKEN, this.token);
        linkedMultiValueMap.add(GrantCredentialsPermissionActivity.f89265g, this.account);
        linkedMultiValueMap.add("gender", this.gender + "");
        linkedMultiValueMap.add("avatar_src", this.avatar_src);
        linkedMultiValueMap.add("nick_name", this.nick_name);
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public void setAvatar_src(String avatar_src) {
        this.avatar_src = avatar_src;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public void setNick_name(String nick_name) {
        this.nick_name = nick_name;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
