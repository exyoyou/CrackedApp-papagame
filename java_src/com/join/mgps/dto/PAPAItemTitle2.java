package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class PAPAItemTitle2 {
    private String subTitle;
    private String title;

    public PAPAItemTitle2(String title) {
        this.title = title;
    }

    public String getSubTitle() {
        return this.subTitle;
    }

    public String getTitle() {
        return this.title;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public PAPAItemTitle2(String title, String subTitle) {
        this.title = title;
        this.subTitle = subTitle;
    }
}
