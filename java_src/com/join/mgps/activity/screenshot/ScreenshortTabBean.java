package com.join.mgps.activity.screenshot;

import java.io.Serializable;

/* JADX INFO: loaded from: classes9.dex */
public class ScreenshortTabBean implements Serializable {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f58102id;
    private int picCount;
    private String picPath;
    private String title;

    public int getId() {
        return this.f58102id;
    }

    public int getPicCount() {
        return this.picCount;
    }

    public String getPicPath() {
        return this.picPath;
    }

    public String getTitle() {
        return this.title;
    }

    public void setId(int id2) {
        this.f58102id = id2;
    }

    public void setPicCount(int picCount) {
        this.picCount = picCount;
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
