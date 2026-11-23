package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class DiscoverBean implements Serializable {
    private long addtimes;
    private String bg_color;
    private String intro;
    private String pic;
    private String title;

    public DiscoverBean() {
    }

    public long getAddtimes() {
        return this.addtimes;
    }

    public String getBg_color() {
        return this.bg_color;
    }

    public String getIntro() {
        return this.intro;
    }

    public String getPic() {
        return this.pic;
    }

    public String getTitle() {
        return this.title;
    }

    public void setAddtimes(long addtimes) {
        this.addtimes = addtimes;
    }

    public void setBg_color(String bg_color) {
        this.bg_color = bg_color;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public DiscoverBean(String pic, String title, String intro, String bg_color, long addtimes) {
        this.pic = pic;
        this.title = title;
        this.intro = intro;
        this.bg_color = bg_color;
        this.addtimes = addtimes;
    }
}
