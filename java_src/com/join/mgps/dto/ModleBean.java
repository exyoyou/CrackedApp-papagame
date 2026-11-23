package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ModleBean implements Serializable {
    private int ad_switch;
    private String color;
    private int comment_count;
    private String ico_remote;
    private String label;
    private String margin;
    private String model_type;
    private int online;
    private String pic_remote;
    private int pv_count;
    private String sub_title;
    private String title;
    private String title_type;
    private String vedio_url;

    public ModleBean(String title, String label, String pic_remote, String ico_remote, String title_type, String margin, String sub_title, int online, String model_type, int ad_switch, String color) {
        this.title = title;
        this.label = label;
        this.pic_remote = pic_remote;
        this.ico_remote = ico_remote;
        this.title_type = title_type;
        this.margin = margin;
        this.sub_title = sub_title;
        this.online = online;
        this.model_type = model_type;
        this.ad_switch = ad_switch;
        this.color = color;
    }

    public int getAd_switch() {
        return this.ad_switch;
    }

    public String getColor() {
        return this.color;
    }

    public int getComment_count() {
        return this.comment_count;
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

    public int getOnline() {
        return this.online;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public int getPv_count() {
        return this.pv_count;
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

    public String getVedio_url() {
        return this.vedio_url;
    }

    public void setAd_switch(int ad_switch) {
        this.ad_switch = ad_switch;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void setComment_count(int comment_count) {
        this.comment_count = comment_count;
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

    public void setOnline(int online) {
        this.online = online;
    }

    public void setPic_remote(String pic_remote) {
        this.pic_remote = pic_remote;
    }

    public void setPv_count(int pv_count) {
        this.pv_count = pv_count;
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

    public void setVedio_url(String vedio_url) {
        this.vedio_url = vedio_url;
    }

    public ModleBean() {
    }

    public ModleBean(String title, String label, String pic_remote, String ico_remote, String title_type, String margin, String sub_title, int online) {
        this.title = title;
        this.label = label;
        this.pic_remote = pic_remote;
        this.ico_remote = ico_remote;
        this.title_type = title_type;
        this.margin = margin;
        this.sub_title = sub_title;
        this.online = online;
    }

    public ModleBean(String title, String label, String pic_remote, String ico_remote, String title_type, String margin, String sub_title, int online, String model_type, int ad_switch) {
        this.title = title;
        this.label = label;
        this.pic_remote = pic_remote;
        this.ico_remote = ico_remote;
        this.title_type = title_type;
        this.margin = margin;
        this.sub_title = sub_title;
        this.online = online;
        this.model_type = model_type;
        this.ad_switch = ad_switch;
    }
}
