package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class TipsInfoBean implements Serializable {
    private Boolean display_switch;
    private String title;

    public Boolean getDisplay_switch() {
        return this.display_switch;
    }

    public String getTitle() {
        return this.title;
    }

    public void setDisplay_switch(Boolean display_switch) {
        this.display_switch = display_switch;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
