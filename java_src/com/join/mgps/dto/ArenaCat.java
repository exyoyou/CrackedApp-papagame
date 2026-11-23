package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaCat implements Serializable {
    private int cat_id;
    private String filter_show;
    private String icon;
    private String title;

    public int getCat_id() {
        return this.cat_id;
    }

    public String getFilter_show() {
        return this.filter_show;
    }

    public String getIcon() {
        return this.icon;
    }

    public String getTitle() {
        return this.title;
    }

    public void setCat_id(int cat_id) {
        this.cat_id = cat_id;
    }

    public void setFilter_show(String filter_show) {
        this.filter_show = filter_show;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
