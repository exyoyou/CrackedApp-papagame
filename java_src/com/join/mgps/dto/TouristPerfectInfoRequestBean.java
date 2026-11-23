package com.join.mgps.dto;

import com.join.mgps.Util.k2;
import com.join.mgps.activity.arena.GameRoomActivity_;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class TouristPerfectInfoRequestBean {
    private String code;
    private String device_id;
    private String mac;
    private String mobile;
    private String nickname;
    private String password;
    private String sign;
    private String source;
    private int submit_number;
    private int uid;
    private String version;

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

    public String getNickname() {
        return this.nickname;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("version", this.version);
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("device_id", this.device_id);
        linkedMultiValueMap.add("mac", this.mac);
        linkedMultiValueMap.add("source", this.source);
        linkedMultiValueMap.add("mobile", this.mobile);
        linkedMultiValueMap.add("code", this.code);
        linkedMultiValueMap.add("nickname", this.nickname);
        linkedMultiValueMap.add(GameRoomActivity_.PASSWORD_EXTRA, this.password);
        linkedMultiValueMap.add("submit_number", this.submit_number + "");
        linkedMultiValueMap.add(Constant.MD5, k2.g(this));
        return linkedMultiValueMap;
    }

    public String getPassword() {
        return this.password;
    }

    public String getSign() {
        return this.sign;
    }

    public String getSource() {
        return this.source;
    }

    public int getSubmit_number() {
        return this.submit_number;
    }

    public int getUid() {
        return this.uid;
    }

    public String getVersion() {
        return this.version;
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

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public void setSubmit_number(int submit_number) {
        this.submit_number = submit_number;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}
