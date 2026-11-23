package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class FriendReqBean {
    private String friendRequestType;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f68056id;
    private String requestInfo;
    private int ruid;
    private String token;
    private int uid;

    public String getFriendRequestType() {
        return this.friendRequestType;
    }

    public int getId() {
        return this.f68056id;
    }

    public String getRequestInfo() {
        return this.requestInfo;
    }

    public int getRuid() {
        return this.ruid;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setFriendRequestType(String friendRequestType) {
        this.friendRequestType = friendRequestType;
    }

    public void setId(int id2) {
        this.f68056id = id2;
    }

    public void setRequestInfo(String requestInfo) {
        this.requestInfo = requestInfo;
    }

    public void setRuid(int ruid) {
        this.ruid = ruid;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
