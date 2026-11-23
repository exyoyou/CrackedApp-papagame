package com.join.mgps.activity.login;

/* JADX INFO: loaded from: classes9.dex */
public class ChangeNiknameRequest {
    private String deviceId;
    private String mac;
    private String nickName;
    private String sign;
    private int uid;
    private String userToken;
    private String version;

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getMac() {
        return this.mac;
    }

    public String getNickName() {
        return this.nickName;
    }

    public String getSign() {
        return this.sign;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUserToken() {
        return this.userToken;
    }

    public String getVersion() {
        return this.version;
    }

    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setUserToken(String userToken) {
        this.userToken = userToken;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}
