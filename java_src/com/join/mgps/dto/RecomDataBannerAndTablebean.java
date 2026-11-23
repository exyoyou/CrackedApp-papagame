package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RecomDataBannerAndTablebean {
    private List<BannerBean> banner;
    private List<RecomDatabean> content;
    private String error;
    private List<BannerBean> fast;

    public RecomDataBannerAndTablebean(List<BannerBean> fast, List<BannerBean> banner, List<RecomDatabean> content, String error) {
        this.fast = fast;
        this.banner = banner;
        this.content = content;
        this.error = error;
    }

    public List<BannerBean> getBanner() {
        return this.banner;
    }

    public List<RecomDatabean> getContent() {
        return this.content;
    }

    public String getError() {
        return this.error;
    }

    public List<BannerBean> getFast() {
        return this.fast;
    }

    public void setBanner(List<BannerBean> banner) {
        this.banner = banner;
    }

    public void setContent(List<RecomDatabean> content) {
        this.content = content;
    }

    public void setError(String error) {
        this.error = error;
    }

    public void setFast(List<BannerBean> fast) {
        this.fast = fast;
    }

    public RecomDataBannerAndTablebean() {
    }
}
