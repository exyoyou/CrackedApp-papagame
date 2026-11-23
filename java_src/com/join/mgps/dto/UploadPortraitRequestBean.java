package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class UploadPortraitRequestBean {
    private String device_id;
    private String token;
    private int uid;

    public UploadPortraitRequestBean() {
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setDevice_id(String device_id) {
        this.device_id = device_id;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public UploadPortraitRequestBean(int uid, String token, String device_id) {
        this.uid = uid;
        this.token = token;
        this.device_id = device_id;
    }
}
