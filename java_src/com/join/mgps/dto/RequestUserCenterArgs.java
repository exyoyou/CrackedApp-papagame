package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestUserCenterArgs {
    private int is_vip;
    private String token;
    private int uid;
    private String userToken;
    private int vip;

    public RequestUserCenterArgs(int uid, String token, int is_vip) {
        this.uid = uid;
        this.token = token;
        this.userToken = token;
        this.is_vip = is_vip;
        this.vip = is_vip;
    }

    public int getIs_vip() {
        return this.is_vip;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUserToken() {
        return this.userToken;
    }

    public int getVip() {
        return this.vip;
    }

    public void setIs_vip(int is_vip) {
        this.is_vip = is_vip;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setUserToken(String userToken) {
        this.userToken = userToken;
    }

    public void setVip(int vip) {
        this.vip = vip;
    }
}
