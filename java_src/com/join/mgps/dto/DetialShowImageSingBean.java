package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class DetialShowImageSingBean implements Serializable {
    private int attr;
    private String path;

    public DetialShowImageSingBean() {
    }

    public int getAttr() {
        return this.attr;
    }

    public String getPath() {
        return this.path;
    }

    public void setAttr(int attr) {
        this.attr = attr;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public DetialShowImageSingBean(String path, int attr) {
        this.path = path;
        this.attr = attr;
    }
}
