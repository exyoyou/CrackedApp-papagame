package com.join.mgps.activity.screenshot;

import java.io.Serializable;

/* JADX INFO: loaded from: classes9.dex */
public class ScreenshotGamedetialBean implements Serializable {
    private String big_pic;
    private int count;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f58103id;
    private String pic;
    private String title;

    public String getBig_pic() {
        return this.big_pic;
    }

    public int getCount() {
        return this.count;
    }

    public int getId() {
        return this.f58103id;
    }

    public String getPic() {
        return this.pic;
    }

    public String getTitle() {
        return this.title;
    }

    public void setBig_pic(String big_pic) {
        this.big_pic = big_pic;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void setId(int id2) {
        this.f58103id = id2;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
