package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class BaiduAdDataMain {
    private String ad_id;
    private int type_id;

    public BaiduAdDataMain() {
    }

    public String getAd_id() {
        return this.ad_id;
    }

    public int getType_id() {
        return this.type_id;
    }

    public void setAd_id(String ad_id) {
        this.ad_id = ad_id;
    }

    public void setType_id(int type_id) {
        this.type_id = type_id;
    }

    public BaiduAdDataMain(int type_id, String ad_id) {
        this.type_id = type_id;
        this.ad_id = ad_id;
    }
}
