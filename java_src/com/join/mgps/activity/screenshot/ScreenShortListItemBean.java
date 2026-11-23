package com.join.mgps.activity.screenshot;

import java.io.Serializable;

/* JADX INFO: loaded from: classes9.dex */
public class ScreenShortListItemBean implements Serializable {
    private String addTime;
    private String describe;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f58100id;
    private String nickname;
    private String picPath;
    private String smallPicPath;

    public String getAddTime() {
        return this.addTime;
    }

    public String getDescribe() {
        return this.describe;
    }

    public int getId() {
        return this.f58100id;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getPicPath() {
        return this.picPath;
    }

    public String getSmallPicPath() {
        return this.smallPicPath;
    }

    public void setAddTime(String addTime) {
        this.addTime = addTime;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public void setId(int id2) {
        this.f58100id = id2;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }

    public void setSmallPicPath(String smallPicPath) {
        this.smallPicPath = smallPicPath;
    }
}
