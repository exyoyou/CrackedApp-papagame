package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class HomeTopChannelBean {
    private CommonGameInfoBean ad_info;
    private String bg_color;
    private CommonGameInfoBean broadcast;
    private CommonGameInfoBean discover;
    private HomeDailyNewBean theNew;

    public CommonGameInfoBean getAd_info() {
        return this.ad_info;
    }

    public String getBg_color() {
        return this.bg_color;
    }

    public CommonGameInfoBean getBroadcast() {
        return this.broadcast;
    }

    public CommonGameInfoBean getDiscover() {
        return this.discover;
    }

    public HomeDailyNewBean getTheNew() {
        return this.theNew;
    }

    public void setAd_info(CommonGameInfoBean ad_info) {
        this.ad_info = ad_info;
    }

    public void setBg_color(String bg_color) {
        this.bg_color = bg_color;
    }

    public void setBroadcast(CommonGameInfoBean broadcast) {
        this.broadcast = broadcast;
    }

    public void setDiscover(CommonGameInfoBean discover) {
        this.discover = discover;
    }

    public void setTheNew(HomeDailyNewBean theNew) {
        this.theNew = theNew;
    }
}
