package com.join.mgps.dto;

import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class ShareDataBean {
    private HashMap<String, Object> res;
    private String type;
    private String userIcon;
    private String userId;
    private String userName;

    public ShareDataBean() {
    }

    public HashMap<String, Object> getRes() {
        return this.res;
    }

    public String getType() {
        return this.type;
    }

    public String getUserIcon() {
        return this.userIcon;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setRes(HashMap<String, Object> res) {
        this.res = res;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setUserIcon(String userIcon) {
        this.userIcon = userIcon;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public ShareDataBean(String type, String userId, String userName, HashMap<String, Object> res) {
        this.type = type;
        this.userId = userId;
        this.userName = userName;
        this.res = res;
    }
}
