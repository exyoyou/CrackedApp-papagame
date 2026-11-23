package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class UninstallOnlineGameBean {
    private String cover_image;
    private List<String> text;

    public String getCover_image() {
        return this.cover_image;
    }

    public List<String> getText() {
        return this.text;
    }

    public void setCover_image(String cover_image) {
        this.cover_image = cover_image;
    }

    public void setText(List<String> text) {
        this.text = text;
    }

    public String toString() {
        return "UninstallOnlineGameBean{text=" + this.text + ", cover_image='" + this.cover_image + "'}";
    }
}
