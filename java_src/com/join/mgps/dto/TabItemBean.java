package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class TabItemBean implements Serializable {
    private Integer display_index;
    private String h5_url;
    private String ico;
    private Integer index;
    private Boolean selected;
    private String title;

    public Integer getDisplay_index() {
        return this.display_index;
    }

    public String getH5_url() {
        return this.h5_url;
    }

    public String getIco() {
        return this.ico;
    }

    public Integer getIndex() {
        return this.index;
    }

    public Boolean getSelected() {
        return this.selected;
    }

    public String getTitle() {
        return this.title;
    }

    public void setDisplay_index(Integer display_index) {
        this.display_index = display_index;
    }

    public void setH5_url(String h5_url) {
        this.h5_url = h5_url;
    }

    public void setIco(String ico) {
        this.ico = ico;
    }

    public void setIndex(Integer index) {
        this.index = index;
    }

    public void setSelected(Boolean selected) {
        this.selected = selected;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
