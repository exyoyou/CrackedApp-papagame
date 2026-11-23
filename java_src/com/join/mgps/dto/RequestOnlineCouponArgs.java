package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestOnlineCouponArgs {
    private int locType;
    private int uid;
    private String userToken;
    private int userType;

    public int getLocType() {
        return this.locType;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUserToken() {
        return this.userToken;
    }

    public int getUserType() {
        return this.userType;
    }

    public void setLocType(int locType) {
        this.locType = locType;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setUserToken(String userToken) {
        this.userToken = userToken;
    }

    public void setUserType(int userType) {
        this.userType = userType;
    }
}
