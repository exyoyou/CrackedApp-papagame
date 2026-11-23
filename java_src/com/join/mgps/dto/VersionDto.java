package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class VersionDto implements Serializable {
    private String androidUrl;
    private String appUrl;
    private String filepath;
    private String head_pic;
    private String info;
    private boolean isQiangzhi;
    private String tow_tpl_back_ground_pic;
    private int tpl_type;
    private float versionNo;
    private String versionNoAndroid;

    public String getAndroidUrl() {
        return this.androidUrl;
    }

    public String getAppUrl() {
        return this.appUrl;
    }

    public String getFilepath() {
        return this.filepath;
    }

    public String getHead_pic() {
        return this.head_pic;
    }

    public String getInfo() {
        return this.info;
    }

    public String getTow_tpl_back_ground_pic() {
        return this.tow_tpl_back_ground_pic;
    }

    public int getTpl_type() {
        return this.tpl_type;
    }

    public float getVersionNo() {
        return this.versionNo;
    }

    public String getVersionNoAndroid() {
        return this.versionNoAndroid;
    }

    public boolean isQiangzhi() {
        return this.isQiangzhi;
    }

    public void setAndroidUrl(String androidUrl) {
        this.androidUrl = androidUrl;
    }

    public void setAppUrl(String appUrl) {
        this.appUrl = appUrl;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath;
    }

    public void setHead_pic(String head_pic) {
        this.head_pic = head_pic;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public void setQiangzhi(boolean qiangzhi) {
        this.isQiangzhi = qiangzhi;
    }

    public void setTow_tpl_back_ground_pic(String tow_tpl_back_ground_pic) {
        this.tow_tpl_back_ground_pic = tow_tpl_back_ground_pic;
    }

    public void setTpl_type(int tpl_type) {
        this.tpl_type = tpl_type;
    }

    public void setVersionNo(float versionNo) {
        this.versionNo = versionNo;
    }

    public void setVersionNoAndroid(String versionNoAndroid) {
        this.versionNoAndroid = versionNoAndroid;
    }
}
