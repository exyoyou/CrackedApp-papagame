package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ConfigMain {
    private List<BaiduAdDataMain> ad_position;
    private EverdayLogin every_day_login;

    public List<BaiduAdDataMain> getAd_position() {
        return this.ad_position;
    }

    public EverdayLogin getEvery_day_login() {
        return this.every_day_login;
    }

    public void setAd_position(List<BaiduAdDataMain> ad_position) {
        this.ad_position = ad_position;
    }

    public void setEvery_day_login(EverdayLogin every_day_login) {
        this.every_day_login = every_day_login;
    }
}
