package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class RecommendAdInfoMainBean implements Serializable {
    private String ad_switch;
    private String ico_remote;
    private String label;
    private String margin;
    private int model_type;
    private String pic_remote;
    private String sub_title;
    private String title;
    private String title_type;

    public String getAd_switch() {
        return this.ad_switch;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String getLabel() {
        return this.label;
    }

    public String getMargin() {
        return this.margin;
    }

    public int getModel_type() {
        return this.model_type;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getSub_title() {
        return this.sub_title;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTitle_type() {
        return this.title_type;
    }

    public void setAd_switch(String ad_switch) {
        this.ad_switch = ad_switch;
    }

    public void setIco_remote(String ico_remote) {
        this.ico_remote = ico_remote;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public void setMargin(String margin) {
        this.margin = margin;
    }

    public void setModel_type(int model_type) {
        this.model_type = model_type;
    }

    public void setPic_remote(String pic_remote) {
        this.pic_remote = pic_remote;
    }

    public void setSub_title(String sub_title) {
        this.sub_title = sub_title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTitle_type(String title_type) {
        this.title_type = title_type;
    }
}
