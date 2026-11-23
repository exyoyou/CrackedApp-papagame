package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class FightMainDataBean implements Serializable {
    private String ico_remote;
    private String label;
    private String margin;
    private String model_type;
    private String pic_remote;
    private String sub_title;
    private String title;
    private String title_type;

    public FightMainDataBean() {
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

    public String getModel_type() {
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

    public void setIco_remote(String ico_remote) {
        this.ico_remote = ico_remote;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public void setMargin(String margin) {
        this.margin = margin;
    }

    public void setModel_type(String model_type) {
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

    public FightMainDataBean(String title, String label, String pic_remote, String ico_remote, String title_type, String margin, String sub_title, String model_type) {
        this.title = title;
        this.label = label;
        this.pic_remote = pic_remote;
        this.ico_remote = ico_remote;
        this.title_type = title_type;
        this.margin = margin;
        this.sub_title = sub_title;
        this.model_type = model_type;
    }
}
