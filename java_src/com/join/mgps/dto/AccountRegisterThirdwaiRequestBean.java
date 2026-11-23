package com.join.mgps.dto;

import com.MApplication;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import java.io.Serializable;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class AccountRegisterThirdwaiRequestBean implements Serializable {
    private int gender;
    private String sign;
    private int source;
    private int type;
    private String unique_id = "";
    private String mac = "";
    private String device_id = "";
    private String account = "";
    private String avatar_src = "";
    private String mobile = "";
    private String password = "";
    private String nickname = "";
    private String code = "";
    private String share_code = MApplication.f3174l1;

    public String getAccount() {
        return this.account;
    }

    public String getAvatar_src() {
        return this.avatar_src;
    }

    public String getCode() {
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

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("unique_id", this.unique_id);
        linkedMultiValueMap.add("type", this.type + "");
        linkedMultiValueMap.add(Constant.MD5, this.sign + "");
        linkedMultiValueMap.add("mac", this.mac);
        linkedMultiValueMap.add("device_id", this.device_id);
        linkedMultiValueMap.add("source", this.source + "");
        linkedMultiValueMap.add(GrantCredentialsPermissionActivity.f89265g, this.account + "");
        linkedMultiValueMap.add("gender", this.gender + "");
        linkedMultiValueMap.add("avatar_src", this.avatar_src + "");
        linkedMultiValueMap.add("mobile", this.mobile + "");
        linkedMultiValueMap.add(GameRoomActivity_.PASSWORD_EXTRA, this.password + "");
        linkedMultiValueMap.add("nickname", this.nickname + "");
        linkedMultiValueMap.add("code", this.code + "");
        linkedMultiValueMap.add("share_code", MApplication.f3174l1 + "");
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

    public int getSource() {
        return this.source;
    }

    public int getType() {
        return this.type;
    }

    public String getUnique_id() {
        return this.unique_id;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public void setAvatar_src(String avatar_src) {
        this.avatar_src = avatar_src;
    }

    public void setCode(String code) {
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

    public void setShare_code(String share_code) {
        this.share_code = share_code;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setSource(int source) {
        this.source = source;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setUnique_id(String unique_id) {
        this.unique_id = unique_id;
    }
}
