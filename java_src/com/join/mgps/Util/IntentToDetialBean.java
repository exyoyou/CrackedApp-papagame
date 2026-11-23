package com.join.mgps.Util;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class IntentToDetialBean implements Serializable {
    private String IconUrl;
    private String appId;
    private String appName;
    private int detialType;
    private float starNUmber;

    public IntentToDetialBean() {
        this.detialType = 0;
    }

    public String getAppId() {
        return this.appId;
    }

    public String getAppName() {
        return this.appName;
    }

    public int getDetialType() {
        return this.detialType;
    }

    public String getIconUrl() {
        return this.IconUrl;
    }

    public float getStarNUmber() {
        return this.starNUmber;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public void setAppName(String appName) {
        this.appName = appName;
    }

    public void setDetialType(int detialType) {
        this.detialType = detialType;
    }

    public void setIconUrl(String iconUrl) {
        this.IconUrl = iconUrl;
    }

    public void setStarNUmber(float starNUmber) {
        this.starNUmber = starNUmber;
    }

    public IntentToDetialBean(String appName, float starNUmber, String appId, String iconUrl, int detialType) {
        this.appName = appName;
        this.starNUmber = starNUmber;
        this.appId = appId;
        this.IconUrl = iconUrl;
        this.detialType = detialType;
    }
}
