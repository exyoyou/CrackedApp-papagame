package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CommonAdBean implements Serializable {
    private List<CommonGameInfoBean> ad_info_list;
    private String position_mark;

    public List<CommonGameInfoBean> getAd_info_list() {
        return this.ad_info_list;
    }

    public String getPosition_mark() {
        return this.position_mark;
    }

    public void setAd_info_list(List<CommonGameInfoBean> ad_info_list) {
        this.ad_info_list = ad_info_list;
    }

    public void setPosition_mark(String position_mark) {
        this.position_mark = position_mark;
    }
}
