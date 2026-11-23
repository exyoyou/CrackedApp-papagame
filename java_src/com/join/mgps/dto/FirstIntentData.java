package com.join.mgps.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.join.mgps.Util.IntentDateBean;

/* JADX INFO: loaded from: classes3.dex */
public class FirstIntentData {
    private String imageUrl;
    private IntentDateBean intentDateBean;

    @JsonProperty
    private boolean isAPKSplashImage;

    @JsonProperty
    private boolean isAutoDownload;

    @JsonProperty("isCustomApk")
    private boolean isCustomApk;

    @JsonProperty
    private boolean isGoDetail;

    @JsonProperty
    private boolean isIntent;

    public FirstIntentData() {
        this.imageUrl = "/android_asset/splash.png";
        this.isGoDetail = true;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public IntentDateBean getIntentDateBean() {
        return this.intentDateBean;
    }

    public boolean isAPKSplashImage() {
        return this.isAPKSplashImage;
    }

    public boolean isAutoDownload() {
        return this.isAutoDownload;
    }

    public boolean isCustomApk() {
        return this.isCustomApk;
    }

    public boolean isGoDetail() {
        return this.isGoDetail;
    }

    public boolean isIntent() {
        return this.isIntent;
    }

    public void setAPKSplashImage(boolean isAPKSplashImage) {
        this.isAPKSplashImage = isAPKSplashImage;
    }

    public void setAutoDownload(boolean isAutoDownload) {
        this.isAutoDownload = isAutoDownload;
    }

    public void setCustomApk(boolean isCustomApk) {
        this.isCustomApk = isCustomApk;
    }

    public void setGoDetail(boolean goDetail) {
        this.isGoDetail = goDetail;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public void setIntent(boolean isIntent) {
        this.isIntent = isIntent;
    }

    public void setIntentDateBean(IntentDateBean intentDateBean) {
        this.intentDateBean = intentDateBean;
    }

    public String toString() {
        return "FirstIntentData{isCustomApk=" + this.isCustomApk + ", isAutoDownload=" + this.isAutoDownload + ", isAPKSplashImage=" + this.isAPKSplashImage + ", imageUrl='" + this.imageUrl + "', isIntent=" + this.isIntent + ", intentDateBean=" + this.intentDateBean + '}';
    }

    public FirstIntentData(boolean isCustomApk, boolean isAutoDownload, boolean isAPKSplashImage, String imageUrl, boolean isIntent, IntentDateBean intentDateBean) {
        this.isGoDetail = true;
        this.isCustomApk = isCustomApk;
        this.isAutoDownload = isAutoDownload;
        this.isAPKSplashImage = isAPKSplashImage;
        this.imageUrl = imageUrl;
        this.isIntent = isIntent;
        this.intentDateBean = intentDateBean;
    }
}
