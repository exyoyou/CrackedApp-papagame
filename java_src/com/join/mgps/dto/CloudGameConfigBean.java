package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class CloudGameConfigBean {
    private CloudBannerBean banner;
    private int free_time;
    private int sign_in_time;
    private int total_sign_in_time;

    public CloudBannerBean getBanner() {
        return this.banner;
    }

    public int getFree_time() {
        return this.free_time;
    }

    public int getSign_in_time() {
        return this.sign_in_time;
    }

    public int getTotal_sign_in_time() {
        return this.total_sign_in_time;
    }

    public void setBanner(CloudBannerBean banner) {
        this.banner = banner;
    }

    public void setFree_time(int free_time) {
        this.free_time = free_time;
    }

    public void setSign_in_time(int sign_in_time) {
        this.sign_in_time = sign_in_time;
    }

    public void setTotal_sign_in_time(int total_sign_in_time) {
        this.total_sign_in_time = total_sign_in_time;
    }
}
