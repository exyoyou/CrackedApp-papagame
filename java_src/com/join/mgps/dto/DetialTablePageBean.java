package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class DetialTablePageBean implements Serializable {
    private String title;
    private String url;

    public DetialTablePageBean() {
    }

    public String getTitle() {
        return this.title;
    }

    public String getUrl() {
        return this.url;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public DetialTablePageBean(String title, String url) {
        this.title = title;
        this.url = url;
    }
}
